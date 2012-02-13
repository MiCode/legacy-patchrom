.class public Lcom/android/phone/BluetoothHandsfree;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$33;,
        Lcom/android/phone/BluetoothHandsfree$DebugThread;,
        Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    }
.end annotation


# static fields
.field private static final ACTION_MOTBTHS_STATE_CHANGED:Ljava/lang/String; = "com.motorola.internal.intent.action.MOTBTHS_STATE_CHANGED"

.field private static final ACTION_VOICE_COMMAND_STOP:Ljava/lang/String; = "com.motorola.internal.intent.action.VOICE_COMMAND_STOP"

.field private static final BATTERY_UPDATE_INTENT:Ljava/lang/String; = "android.bluetooth.device.action.BATTERY_METER"

.field private static final BRSF_AG_EC_NR:I = 0x2

.field private static final BRSF_AG_ENHANCED_CALL_CONTROL:I = 0x80

.field private static final BRSF_AG_ENHANCED_CALL_STATUS:I = 0x40

.field private static final BRSF_AG_ENHANCED_ERR_RESULT_CODES:I = 0x100

.field private static final BRSF_AG_IN_BAND_RING:I = 0x8

.field private static final BRSF_AG_REJECT_CALL:I = 0x20

.field private static final BRSF_AG_THREE_WAY_CALLING:I = 0x1

.field private static final BRSF_AG_VOICE_RECOG:I = 0x4

.field private static final BRSF_AG_VOICE_TAG_NUMBE:I = 0x10

.field private static final BRSF_HF_CLIP:I = 0x4

.field private static final BRSF_HF_CW_THREE_WAY_CALLING:I = 0x2

.field private static final BRSF_HF_EC_NR:I = 0x1

.field private static final BRSF_HF_ENHANCED_CALL_CONTROL:I = 0x40

.field private static final BRSF_HF_ENHANCED_CALL_STATUS:I = 0x20

.field private static final BRSF_HF_REMOTE_VOL_CONTROL:I = 0x10

.field private static final BRSF_HF_VOICE_REG_ACT:I = 0x8

.field public static final BTACC_BATTERY_AND_CHARGING_STATUS:I = 0x3

.field public static final BTACC_BATTERY_STATUS:I = 0x1

.field public static final BTACC_CHARGING_STATUS:I = 0x2

.field public static final BTACC_HFP_RVC_IS_SUPPORTED:I = 0x1

.field public static final BTACC_HFP_RVC_NOT_SUPPORTED:I = 0x0

.field public static final BTACC_NO_STATUS:I = 0x0

.field private static final CDMA_MAX_CONNECTIONS:I = 0x2

.field private static final CHECK_CALL_STARTED:I = 0x4

.field private static final CHECK_VOICE_RECOGNITION_STARTED:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final GSM_MAX_CONNECTIONS:I = 0x6

.field private static final HEADSET_NAME:Ljava/lang/String; = "bt_headset_name"

.field private static final HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field private static final MESSAGE_CHECK_PENDING_SCO:I = 0x6

.field private static final SCO_ACCEPTED:I = 0x1

.field private static final SCO_CLOSED:I = 0x3

.field private static final SCO_CONNECTED:I = 0x2

.field private static final START_CALL_TIMEOUT:I = 0x2710

.field private static final START_VOICE_RECOGNITION_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "BT HS/HF"

.field public static final TYPE_HANDSFREE:I = 0x2

.field public static final TYPE_HEADSET:I = 0x1

.field public static final TYPE_UNKNOWN:I

.field private static final VDBG:Z

.field private static mVoiceRecognitionRunning:Z

.field private static sVoiceCommandIntent:Landroid/content/Intent;

.field private static sVoiceCommandStopIntent:Landroid/content/Intent;


# instance fields
.field private currBtHfBatteryStatus:I

.field private currBtHfChargeStatus:I

.field private final mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpState:I

.field private mA2dpSuspended:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPossible:Z

.field private mBgndEarliestConnectionTime:J

.field private mBldnAdditionalResponse:Z

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

.field private final mCM:Lcom/android/internal/telephony/CallManager;

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mClip:Z

.field private mCmee:Z

.field private mConnect:Lcom/android/internal/telephony/Connection;

.field private mConnectedSco:Landroid/bluetooth/ScoSocket;

.field private final mContext:Landroid/content/Context;

.field private mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

.field private mHFBatteryChargingStatusSupported:Z

.field private mHFBatteryReportingSupported:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetType:I

.field private mIncomingSco:Landroid/bluetooth/ScoSocket;

.field private mIndicatorsEnabled:Z

.field private mLocalBrsf:I

.field private final mMessaging:Lcom/android/phone/BluetoothAtSms;

.field private mOutgoingSco:Landroid/bluetooth/ScoSocket;

.field private mPendingSco:Z

.field private mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoteBrsf:I

.field private mScoGain:I

.field private mServiceConnectionEstablished:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserWantsAudio:Z

.field private mWaitingForCallStart:Z

.field private mWaitingForVoiceRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    .line 75
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    .line 121
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 122
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 123
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 127
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 137
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 138
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 142
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 151
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 152
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 154
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z

    .line 155
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z

    .line 158
    iput v7, p0, Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I

    .line 159
    iput v7, p0, Lcom/android/phone/BluetoothHandsfree;->currBtHfChargeStatus:I

    .line 166
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 169
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mBldnAdditionalResponse:Z

    .line 1144
    new-instance v2, Lcom/android/phone/BluetoothHandsfree$1;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$1;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    .line 207
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 208
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 210
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    move v1, v5

    .line 211
    .local v1, bluetoothCapable:Z
    :goto_0
    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 212
    new-instance v2, Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 213
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    .line 214
    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 215
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 217
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    .line 218
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BT HS/HF:StartCall"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 220
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 221
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BT HS/HF:VoiceRecognition"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 223
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 225
    const/16 v2, 0x63

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 232
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 233
    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandStopIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 239
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.internal.intent.action.VOICE_COMMAND_STOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandStopIntent:Landroid/content/Intent;

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 248
    :cond_2
    new-instance v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {v2, p0, v6}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    .line 249
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 250
    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/phone/BluetoothAtPhonebook;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    .line 251
    new-instance v2, Lcom/android/phone/BluetoothAtSms;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/phone/BluetoothAtSms;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mMessaging:Lcom/android/phone/BluetoothAtSms;

    .line 252
    new-instance v2, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v6}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 253
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    .line 254
    invoke-virtual {p0, v4}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 256
    if-eqz v1, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 259
    :cond_3
    return-void

    .end local v1           #bluetoothCapable:Z
    :cond_4
    move v1, v4

    .line 210
    goto/16 :goto_0

    .line 235
    .restart local v1       #bluetoothCapable:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->callStarted()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHandsfree;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/android/phone/BluetoothHandsfree;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnect:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Connection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnect:Lcom/android/internal/telephony/Connection;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHFBatteryReportingSupported:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHFBatteryChargingStatusSupported:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->lowBtHfBatteryLevelNotification()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendHfBatteryStatusIntent(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->currBtHfChargeStatus:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->currBtHfChargeStatus:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendHfChargingStatusIntent(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$5602(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V

    return-void
.end method

.method static synthetic access$6700()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandStopIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return p1
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return p1
.end method

.method private allowAudioAnytime()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2695
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "debug.bt.hfp.audio_anytime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "state"
    .parameter "device"

    .prologue
    .line 1240
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastAudioStateIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1241
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1244
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method private declared-synchronized callStarted()V
    .locals 1

    .prologue
    .line 2609
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    if-eqz v0, :cond_0

    .line 2610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 2611
    const-string v0, "OK"

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2612
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2616
    :cond_0
    monitor-exit p0

    return-void

    .line 2609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 11
    .parameter "index"
    .parameter "c"

    .prologue
    .line 1652
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1653
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v9, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 1655
    .local v1, currCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v9, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 1658
    .local v5, prevCdmaCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v9, :cond_2

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v9, :cond_2

    .line 1662
    const/4 v7, 0x0

    .line 1696
    .local v7, state:I
    :goto_0
    const/4 v3, 0x0

    .line 1697
    .local v3, mpty:I
    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v9, :cond_6

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v9, :cond_6

    .line 1699
    const/4 v3, 0x1

    .line 1704
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    move v2, v9

    .line 1706
    .local v2, direction:I
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1707
    .local v4, number:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1708
    .local v8, type:I
    if-eqz v4, :cond_0

    .line 1709
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v8

    .line 1712
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+CLCC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",0,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1713
    .local v6, result:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1714
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v9, v6

    .line 1716
    .end local v2           #direction:I
    .end local v3           #mpty:I
    .end local v4           #number:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    .end local v7           #state:I
    .end local v8           #type:I
    :goto_3
    return-object v9

    .line 1664
    :cond_2
    sget-object v9, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1692
    :pswitch_0
    const/4 v9, 0x0

    goto :goto_3

    .line 1670
    :pswitch_1
    if-nez p1, :cond_4

    .line 1671
    iget-boolean v9, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    move v7, v9

    .restart local v7       #state:I
    :goto_4
    goto/16 :goto_0

    .end local v7           #state:I
    :cond_3
    const/4 v9, 0x0

    move v7, v9

    goto :goto_4

    .line 1673
    :cond_4
    iget-boolean v9, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    move v7, v9

    .line 1675
    .restart local v7       #state:I
    :goto_5
    goto/16 :goto_0

    .line 1673
    .end local v7           #state:I
    :cond_5
    const/4 v9, 0x1

    move v7, v9

    goto :goto_5

    .line 1677
    :pswitch_2
    const/4 v7, 0x1

    .line 1678
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1680
    .end local v7           #state:I
    :pswitch_3
    const/4 v7, 0x2

    .line 1681
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1683
    .end local v7           #state:I
    :pswitch_4
    const/4 v7, 0x3

    .line 1684
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1686
    .end local v7           #state:I
    :pswitch_5
    const/4 v7, 0x4

    .line 1687
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1689
    .end local v7           #state:I
    :pswitch_6
    const/4 v7, 0x5

    .line 1690
    .restart local v7       #state:I
    goto/16 :goto_0

    .line 1701
    .restart local v3       #mpty:I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1704
    :cond_7
    const/4 v9, 0x0

    move v2, v9

    goto/16 :goto_2

    .line 1664
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1598
    monitor-enter p0

    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Lcom/android/internal/telephony/Connection;

    .line 1599
    .local v0, clccConnections:[Lcom/android/internal/telephony/Connection;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1600
    .local v2, foregroundCall:Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1601
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 1604
    .local v6, ringingCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_4

    .line 1605
    sget-boolean v7, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v7, :cond_0

    const-string v7, "Filling clccConnections[0] for INCOMING state"

    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1606
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1629
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_a

    .line 1631
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 1638
    :cond_2
    :goto_1
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1639
    .local v4, result:Landroid/bluetooth/AtCommandResult;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_b

    aget-object v7, v0, v3

    if-eqz v7, :cond_b

    .line 1640
    aget-object v7, v0, v3

    invoke-direct {p0, v3, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    .line 1641
    .local v1, clccEntry:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1642
    invoke-virtual {v4, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1639
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1607
    .end local v1           #clccEntry:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1609
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1610
    sget-boolean v7, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v7, :cond_5

    const-string v7, "Filling clccConnections[0] & [1] for CALL WAITING state"

    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1611
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1612
    const/4 v7, 0x1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1598
    .end local v0           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v2           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v5           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v6           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1614
    .restart local v0       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v2       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v6       #ringingCallState:Lcom/android/internal/telephony/Call$State;
    :cond_6
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v8, :cond_8

    .line 1616
    sget-boolean v7, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v7, :cond_7

    const-string v7, "Filling clccConnections[0] with ForgroundCall latest connection"

    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1617
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    goto :goto_0

    .line 1621
    :cond_8
    sget-boolean v7, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v7, :cond_9

    const-string v7, "Filling clccConnections[0] & [1] with ForgroundCall connections"

    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1622
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1623
    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    aput-object v8, v0, v7

    goto/16 :goto_0

    .line 1632
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_2

    .line 1634
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1646
    .restart local v3       #i:I
    .restart local v4       #result:Landroid/bluetooth/AtCommandResult;
    :cond_b
    monitor-exit p0

    return-object v4
.end method

.method private configAudioParameters()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 383
    const-string v0, "<unknown>"

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_headset_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_headset_nrec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 12
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, ","

    .line 1549
    sget-object v7, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1569
    :pswitch_0
    const/4 v7, 0x0

    .line 1590
    :goto_0
    return-object v7

    .line 1551
    :pswitch_1
    const/4 v5, 0x0

    .line 1572
    .local v5, state:I
    :goto_1
    const/4 v2, 0x0

    .line 1573
    .local v2, mpty:I
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1574
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1575
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v10

    .line 1578
    :cond_0
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v10

    .line 1580
    .local v1, direction:I
    :goto_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1581
    .local v3, number:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1582
    .local v6, type:I
    if-eqz v3, :cond_1

    .line 1583
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    .line 1586
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CLCC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1587
    .local v4, result:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1588
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v7, v4

    .line 1590
    goto :goto_0

    .line 1554
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #direction:I
    .end local v2           #mpty:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #state:I
    .end local v6           #type:I
    :pswitch_2
    const/4 v5, 0x1

    .line 1555
    .restart local v5       #state:I
    goto :goto_1

    .line 1557
    .end local v5           #state:I
    :pswitch_3
    const/4 v5, 0x2

    .line 1558
    .restart local v5       #state:I
    goto :goto_1

    .line 1560
    .end local v5           #state:I
    :pswitch_4
    const/4 v5, 0x3

    .line 1561
    .restart local v5       #state:I
    goto :goto_1

    .line 1563
    .end local v5           #state:I
    :pswitch_5
    const/4 v5, 0x4

    .line 1564
    .restart local v5       #state:I
    goto :goto_1

    .line 1566
    .end local v5           #state:I
    :pswitch_6
    const/4 v5, 0x5

    .line 1567
    .restart local v5       #state:I
    goto/16 :goto_1

    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #mpty:I
    :cond_3
    move v2, v9

    .line 1575
    goto :goto_2

    :cond_4
    move v1, v9

    .line 1578
    goto :goto_3

    .line 1549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private createScoSocket()Landroid/bluetooth/ScoSocket;
    .locals 6

    .prologue
    .line 1236
    new-instance v0, Landroid/bluetooth/ScoSocket;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/ScoSocket;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;III)V

    return-object v0
.end method

.method private declared-synchronized expectCallStart()V
    .locals 4

    .prologue
    .line 2600
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 2601
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2602
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2603
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2604
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2606
    :cond_0
    monitor-exit p0

    return-void

    .line 2600
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized expectVoiceRecognition()V
    .locals 4

    .prologue
    .line 2621
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 2622
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2623
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2624
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2625
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2627
    :cond_0
    monitor-exit p0

    return-void

    .line 2621
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 24

    .prologue
    .line 1466
    monitor-enter p0

    const/16 v22, 0x6

    :try_start_0
    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/internal/telephony/Connection;

    move-object v5, v0

    .line 1467
    .local v5, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 1468
    .local v17, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1470
    .local v8, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 1471
    .local v12, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1472
    .local v3, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    .line 1474
    .local v19, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1475
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1478
    :cond_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1479
    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1482
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1483
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1488
    :cond_2
    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Z

    move-object v7, v0

    .line 1489
    .local v7, clccUsed:[Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    const/16 v22, 0x6

    move v0, v14

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    aget-boolean v22, v22, v14

    aput-boolean v22, v7, v14

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-boolean v23, v22, v14

    .line 1489
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1493
    :cond_3
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 1494
    .local v4, c:Lcom/android/internal/telephony/Connection;
    const/4 v13, 0x0

    .line 1495
    .local v13, found:Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v20

    .line 1496
    .local v20, timestamp:J
    const/4 v14, 0x0

    :goto_2
    const/16 v22, 0x6

    move v0, v14

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 1497
    aget-boolean v22, v7, v14

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v14

    cmp-long v22, v20, v22

    if-nez v22, :cond_6

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aput-boolean v23, v22, v14

    .line 1499
    const/4 v13, 0x1

    .line 1500
    aput-object v4, v5, v14

    .line 1504
    :cond_5
    if-nez v13, :cond_4

    .line 1505
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1466
    .end local v3           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v7           #clccUsed:[Z
    .end local v8           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v12           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v13           #found:Z
    .end local v14           #i:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v19           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v20           #timestamp:J
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 1496
    .restart local v3       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #c:Lcom/android/internal/telephony/Connection;
    .restart local v5       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v7       #clccUsed:[Z
    .restart local v8       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v12       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v13       #found:Z
    .restart local v14       #i:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v19       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v20       #timestamp:J
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1526
    .end local v3           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v13           #found:Z
    .end local v20           #timestamp:J
    .local v9, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v10, earliestTimestamp:J
    .local v16, j:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aput-boolean v23, v22, v14

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v22, v0

    aput-wide v10, v22, v14

    .line 1528
    aput-object v9, v5, v14

    .line 1529
    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1510
    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v10           #earliestTimestamp:J
    .end local v16           #j:I
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b

    .line 1512
    const/4 v14, 0x0

    .line 1513
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    aget-boolean v22, v22, v14

    if-eqz v22, :cond_9

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1515
    :cond_9
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v10

    .line 1516
    .restart local v10       #earliestTimestamp:J
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 1517
    .restart local v9       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/16 v16, 0x0

    .restart local v16       #j:I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1518
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v20

    .line 1519
    .restart local v20       #timestamp:J
    cmp-long v22, v20, v10

    if-gez v22, :cond_a

    .line 1520
    move-wide/from16 v10, v20

    .line 1521
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 1517
    .restart local v9       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1533
    .end local v9           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v10           #earliestTimestamp:J
    .end local v16           #j:I
    .end local v20           #timestamp:J
    :cond_b
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1534
    .local v18, result:Landroid/bluetooth/AtCommandResult;
    const/4 v14, 0x0

    :goto_5
    move-object v0, v5

    array-length v0, v0

    move/from16 v22, v0

    move v0, v14

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v22, v0

    aget-boolean v22, v22, v14

    if-eqz v22, :cond_c

    .line 1536
    aget-object v22, v5, v14

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothHandsfree;->connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v6

    .line 1537
    .local v6, clccEntry:Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 1538
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1534
    .end local v6           #clccEntry:Ljava/lang/String;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1543
    :cond_d
    monitor-exit p0

    return-object v18
.end method

.method private inDebug()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2691
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "debug.bt.hfp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private initializeHandsfreeAtParser()V
    .locals 4

    .prologue
    .line 1773
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Registering Handsfree AT commands"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1774
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 1775
    .local v0, parser:Landroid/bluetooth/AtParser;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1778
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$3;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$3;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 1786
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$4;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$4;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 1816
    const-string v2, "+CHUP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$5;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$5;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1832
    const-string v2, "+BRSF"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$6;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$6;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1880
    const-string v2, "+XMOT"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$7;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$7;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1957
    const-string v2, "+MOTACCEV"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$8;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$8;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2028
    const-string v2, "+CCWA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$9;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$9;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2057
    const-string v2, "+CMER"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$10;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$10;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2101
    const-string v2, "+CMEE"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$11;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$11;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2135
    const-string v2, "+BLDN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$12;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$12;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2143
    const-string v2, "+CIND"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$13;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$13;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2155
    const-string v2, "+CSQ"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$14;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$14;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2163
    const-string v2, "+CREG"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$15;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$15;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2172
    const-string v2, "+VTS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$16;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$16;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2204
    const-string v2, "+CLCC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$17;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$17;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2219
    const-string v2, "+CHLD"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$18;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$18;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2328
    const-string v2, "+COPS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$19;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$19;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2365
    const-string v2, "+CPIN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$20;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$20;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2374
    const-string v2, "+BTRH"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$21;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$21;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2390
    const-string v2, "+CIMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$22;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$22;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2404
    const-string v2, "+CLIP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$23;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$23;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2427
    const-string v2, "+CGSN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$24;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$24;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2437
    const-string v2, "+CGMM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$25;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$25;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2451
    const-string v2, "+CGMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$26;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$26;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2465
    const-string v2, "+NREC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$27;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$27;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2482
    const-string v2, "+BVRA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$28;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$28;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2519
    const-string v2, "+CNUM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$29;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$29;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2532
    const-string v2, "+VGM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$30;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$30;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2542
    const-string v2, "+VGS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$31;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$31;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2558
    const-string v2, "+CPAS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$32;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$32;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2576
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v2, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    .line 2577
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mMessaging:Lcom/android/phone/BluetoothAtSms;

    invoke-virtual {v2, v0}, Lcom/android/phone/BluetoothAtSms;->register(Landroid/bluetooth/AtParser;)V

    .line 2578
    return-void
.end method

.method private initializeHeadsetAtParser()V
    .locals 3

    .prologue
    .line 1723
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Registering Headset AT commands"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1724
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 1727
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+CKPD"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$2;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$2;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1767
    return-void
.end method

.method private isA2dpMultiProfile()Z
    .locals 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIncallAudio()Z
    .locals 2

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 320
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2836
    const-string v0, "BT HS/HF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    return-void
.end method

.method private lowBtHfBatteryLevelNotification()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 2667
    sget-boolean v11, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v11, :cond_0

    const-string v11, "BT HS/HF"

    const-string v12, "lowBtHfBatteryLevelNotification"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :cond_0
    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2669
    .local v4, mNotificationManager:Landroid/app/NotificationManager;
    const v3, 0x7f020184

    .line 2670
    .local v3, icon:I
    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v11}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2671
    .local v5, name:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 2672
    const-string v5, "<unknown>"

    .line 2675
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (Headset)- Battery is low"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2676
    .local v8, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 2678
    .local v9, when:J
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v3, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2679
    .local v6, notification:Landroid/app/Notification;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (Headset)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2680
    .local v2, contentTitle:Ljava/lang/CharSequence;
    const-string v1, "Battery is low"

    .line 2681
    .local v1, contentText:Ljava/lang/CharSequence;
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.bluetooth.device.action.BATTERY_METER"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2682
    .local v7, notificationIntent:Landroid/content/Intent;
    const-string v11, "value"

    const/4 v12, 0x4

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2683
    const-string v11, "name"

    invoke-virtual {v7, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2684
    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-static {v11, v13, v7, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2685
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2686
    const/4 v11, 0x1

    invoke-virtual {v4, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2687
    return-void
.end method

.method private redial()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    .line 1438
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothAtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1442
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Bluetooth redial requested (+BLDN), but no previous outgoing calls found. Ignoring"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1444
    :cond_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1457
    :goto_0
    return-object v2

    .line 1447
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1449
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1450
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1456
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 1457
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method private sendHfBatteryStatusIntent(Ljava/lang/Integer;)V
    .locals 4
    .parameter "battStatus"

    .prologue
    .line 351
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendHfBatteryStatusIntent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.HFBATTERY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.HFBATTERY_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 355
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendHfChargingStatusIntent(Ljava/lang/Integer;)V
    .locals 4
    .parameter "chargeStatus"

    .prologue
    .line 359
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendHfChargingStatusIntent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.HFCHARGE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.HFCHARGE_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    .locals 4
    .parameter "motBtHfState"

    .prologue
    .line 371
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMotBtHfStatusIntent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 374
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.MOTBTHS_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 376
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 378
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private startDebug()V
    .locals 2

    .prologue
    .line 2700
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-nez v0, :cond_0

    .line 2701
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 2702
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->start()V

    .line 2704
    :cond_0
    return-void
.end method

.method private stopDebug()V
    .locals 1

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-eqz v0, :cond_0

    .line 2708
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->interrupt()V

    .line 2709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 2711
    :cond_0
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 195
    packed-switch p0, :pswitch_data_0

    .line 203
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 197
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v0, "headset"

    goto :goto_0

    .line 201
    :pswitch_2
    const-string v0, "handsfree"

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized audioOff()V
    .locals 4

    .prologue
    .line 1342
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioOff(): mPendingSco: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mConnectedSco: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOutgoingSco: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mA2dpState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mA2dpSuspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1346
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1348
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v2, :cond_3

    .line 1349
    const/4 v0, 0x0

    .line 1350
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v2, :cond_1

    .line 1351
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1353
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v2}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1354
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    .line 1355
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_2

    .line 1356
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1358
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1360
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v2, :cond_4

    .line 1361
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v2}, Landroid/bluetooth/ScoSocket;->close()V

    .line 1362
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    .line 1365
    :cond_4
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 1368
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1374
    :goto_0
    :try_start_2
    sget-boolean v2, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "resuming A2DP stream after disconnecting SCO"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1375
    :cond_5
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1376
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1378
    :cond_6
    monitor-exit p0

    return-void

    .line 1369
    :catch_0
    move-exception v1

    .line 1370
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1342
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized audioOn()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1260
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "audioOn()"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1262
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "audioOn(): headset is not connected!"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v1, v3

    .line 1314
    :goto_0
    monitor-exit p0

    return v1

    .line 1265
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-nez v1, :cond_4

    .line 1266
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "audioOn(): service connection not yet established!"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_3
    move v1, v3

    .line 1267
    goto :goto_0

    .line 1270
    :cond_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_6

    .line 1271
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "audioOn(): audio is already connected"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_5
    move v1, v4

    .line 1272
    goto :goto_0

    .line 1275
    :cond_6
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v1, :cond_8

    .line 1276
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "audioOn(): user requested no audio, ignoring"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_7
    move v1, v3

    .line 1277
    goto :goto_0

    .line 1280
    :cond_8
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_a

    .line 1281
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "audioOn(): outgoing SCO already in progress"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_9
    move v1, v4

    .line 1282
    goto :goto_0

    .line 1285
    :cond_a
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-eqz v1, :cond_c

    .line 1286
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "audioOn(): SCO already pending"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_b
    move v1, v4

    .line 1287
    goto :goto_0

    .line 1290
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1291
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1292
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    .line 1293
    sget-boolean v1, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "suspending A2DP stream for SCO"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1294
    :cond_d
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1295
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v1, :cond_10

    .line 1296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    .line 1297
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1298
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1304
    .end local v0           #msg:Landroid/os/Message;
    :cond_e
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z

    if-nez v1, :cond_f

    .line 1305
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    .line 1306
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/ScoSocket;->connect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    :cond_f
    :goto_2
    move v1, v4

    .line 1314
    goto/16 :goto_0

    .line 1300
    :cond_10
    const-string v1, "BT HS/HF"

    const-string v2, "Could not suspend A2DP stream for SCO, going ahead with SCO"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1260
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1310
    :cond_11
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2831
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdmaSetSecondCallState: Setting mCdmaIsSecondCallActive to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2832
    :cond_0
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 2833
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 1

    .prologue
    .line 2826
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cdmaSetSecondCallState: Toggling mCdmaIsSecondCallActive"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2827
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 2828
    return-void

    .line 2827
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized connectHeadset(Landroid/bluetooth/HeadsetBase;I)V
    .locals 3
    .parameter "headset"
    .parameter "headsetType"

    .prologue
    const/4 v1, 0x1

    .line 293
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 294
    iput p2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 295
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-ne v0, v1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mMessaging:Lcom/android/phone/BluetoothAtSms;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothAtSms;->setupIntentReceiver()V

    .line 301
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->startEventThread()V

    .line 302
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->configAudioParameters()V

    .line 304
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->startDebug()V

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 312
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 298
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnectHeadset()V
    .locals 3

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 326
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mMessaging:Lcom/android/phone/BluetoothAtSms;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothAtSms;->cleanUp()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 328
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->stopDebug()V

    .line 329
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 330
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 331
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCurrBtHfBatteryStatus()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->currBtHfBatteryStatus:I

    return v0
.end method

.method getCurrDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method ignoreRing()V
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ignoreRing()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$4200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1428
    return-void
.end method

.method isAudioOn()Z
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadsetConnected()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized onBluetoothDisabled()V
    .locals 3

    .prologue
    .line 275
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 276
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 277
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;->setHeadsetFeature(II)V

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendMotBtHfStatusIntent(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBluetoothEnabled()V
    .locals 1

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    if-nez v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    .line 270
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->accept()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_0
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportCmeError(I)Landroid/bluetooth/AtCommandResult;
    .locals 3
    .parameter "error"

    .prologue
    .line 2588
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    if-eqz v1, :cond_0

    .line 2589
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2590
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CME ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v1, v0

    .line 2593
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method declared-synchronized resetAtState()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 335
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 336
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 337
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 339
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    const/4 v1, 0x6

    :try_start_1
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    .line 341
    const/4 v1, 0x6

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    .line 342
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBldnAdditionalResponse:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    monitor-exit p0

    return-void

    .line 345
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 335
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendScoGainUpdate(I)V
    .locals 2
    .parameter "gain"

    .prologue
    .line 2581
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 2582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+VGS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2583
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 2585
    :cond_0
    return-void
.end method

.method sendURC(Ljava/lang/String;)V
    .locals 1
    .parameter "urc"

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 1434
    :cond_0
    return-void
.end method

.method declared-synchronized startVoiceRecognition()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2630
    monitor-enter p0

    const/4 v0, 0x0

    .line 2633
    .local v0, ret:Z
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2636
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v1, :cond_1

    .line 2638
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 2639
    const-string v1, "OK"

    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2650
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v0

    .line 2651
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2652
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v1, v0

    .line 2654
    :goto_1
    monitor-exit p0

    return v1

    .line 2643
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    :cond_2
    move v1, v3

    .line 2645
    goto :goto_1

    .line 2648
    :cond_3
    const-string v1, "+BVRA: 1"

    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2630
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized stopVoiceRecognition()Z
    .locals 1

    .prologue
    .line 2660
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2663
    :goto_0
    monitor-exit p0

    return v0

    .line 2661
    :cond_0
    :try_start_1
    const-string v0, "+BVRA: 0"

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 2662
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2663
    const/4 v0, 0x1

    goto :goto_0

    .line 2660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 1249
    sget-boolean v0, Lcom/android/phone/BluetoothHandsfree;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BT HS/HF"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$4100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1252
    return-void
.end method

.method declared-synchronized userWantsAudioOff()V
    .locals 1

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1333
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 1334
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    :try_start_2
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1336
    monitor-exit p0

    return-void

    .line 1334
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1332
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized userWantsAudioOn()V
    .locals 1

    .prologue
    .line 1322
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1323
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 1324
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    :try_start_2
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1326
    monitor-exit p0

    return-void

    .line 1324
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1322
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
