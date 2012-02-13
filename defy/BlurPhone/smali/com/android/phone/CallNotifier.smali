.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$MediaTonePlayer;,
        Lcom/android/phone/CallNotifier$PhoneAutoAnswerNotifier;,
        Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;,
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field public static final ACTION_CALLS_TABLE_ADD_ENTRY:Ljava/lang/String; = "com.android.phone.intent.action.CALLS_ADD_ENTRY"

.field static final AP_STATE_OFF:I = 0x2

.field static final AP_STATE_ON:I = 0x0

.field static final AP_STATE_SUSPENDED:I = 0x1

.field private static final ATTENTION_LIGHT_OFF:I = 0xffffff

.field private static final ATTENTION_LIGHT_ON:I = 0xff

.field private static final AUDIO_ROUTE_CHANGED:I = 0x12

.field private static final AUTO_RETRY_OFF:I = 0x0

.field private static final AUTO_RETRY_ON:I = 0x1

.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

.field static final CALLER_ID_READ_ONCE:Ljava/lang/String; = "Caller id then ring"

.field static final CALLER_ID_READ_REPEAT:Ljava/lang/String; = "Caller id repeat"

.field static final CALLER_ID_REPEAT:I = 0x2

.field static final CALLER_ID_THEN_RING:I = 0x1

.field private static final CALLWAITING_ADDCALL_DISABLE_TIME:I = 0x7530

.field private static final CALLWAITING_ADDCALL_DISABLE_TIMEOUT:I = 0xe

.field private static final CALLWAITING_CALLERINFO_DISPLAY_DONE:I = 0xd

.field private static final CALLWAITING_CALLERINFO_DISPLAY_TIME:I = 0x4e20

.field private static final CALL_AUTO_ANSWER_WAIT_TIME:I = 0x1388

.field private static final CALL_CONNECT_TONE_ON:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DISPLAYINFO_NOTIFICATION_DONE:I = 0xf

.field private static final DISPLAYINFO_NOTIFICATION_TIME:I = 0x7d0

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_OFF:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field static final ERI_PLAYBACK:I = 0x1e

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x10

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x21

.field private static final HARDWARE_SERVICE_TAG:Ljava/lang/String; = "power"

.field private static final INCOMING_CALL:Ljava/lang/String; = "com.motorola.intent.action.INCOMING_CALL"

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field private static final MAX_RING_TIME:I = 0x2710

.field private static final NETWORK_LOST_TONE_ON:I = 0x1

.field private static final PHONE_BATTERY_LOW:I = 0xc

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x8

.field private static final PHONE_CFU_AT_POWERUP:I = 0x14

.field private static final PHONE_DISCONNECT:I = 0x3

.field private static final PHONE_ENHANCED_VP_OFF:I = 0xa

.field private static final PHONE_ENHANCED_VP_ON:I = 0x9

.field private static final PHONE_INCOMING_RING:I = 0x5

.field private static final PHONE_MWI_CHANGED:I = 0xb

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_RINGBACK_TONE:I = 0x13

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PHONE_STATE_DISPLAYINFO:I = 0x6

.field private static final PHONE_STATE_SIGNALINFO:I = 0x7

.field private static final PHONE_UI_EVENT_MULTIPLE_QUERY:Ljava/lang/String; = "multiple incoming call queries attempted"

.field private static final PHONE_UI_EVENT_RINGER_QUERY_ELAPSED:Ljava/lang/String; = "using default incoming call behavior"

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field private static final PHONE_UNKNOWN_MCC:I = 0x20

.field private static final RESULT_SET_PREFERRED_NETWORK_TYPE:I = 0x22

.field private static final RINGBACK_TONE_OFF:I = 0x2

.field private static final RINGBACK_TONE_ON:I = 0x1

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1f4

.field static final RING_ONLY:I = 0x0

.field private static final RING_TIMER_EXPIRED:I = 0x1f

.field private static final TONE_RELATIVE_VOLUME_SIGNALINFO:I = 0x50

.field private static final UNLOCK_LIBCAMERA:I = 0x11

.field private static final VDBG:Z

.field private static sbShowAgainChecked:Z


# instance fields
.field final FID_34387_MULTIMODE:Ljava/lang/String;

.field private blockedIncomingCallList:Ljava/util/ArrayList;

.field private isInitialIncEriPlayed:Z

.field private mApState:I

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mCFUFirst:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallWaitingTimeOut:Z

.field private mCallerIdReadoutStatus:I

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCallerName:Ljava/lang/String;

.field private mCallerNumber:Ljava/lang/String;

.field private mCdmaVoicePrivacyState:Z

.field private mCurrentEmergencyToneState:I

.field private mCurrentRingbackToneState:I

.field private mCurrentRingerUri:Landroid/net/Uri;

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mEndingBeforeSwitch:Z

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

.field private mInCallToneGenerator:Landroid/media/ToneGenerator;

.field private mIsEmergencyToneOn:I

.field private mIsRedialCall:Z

.field private mModeSwitchDialog:Landroid/app/AlertDialog;

.field private mOtaCallToneStart:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneIsCdma:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayedCallConnectTone:Z

.field private mPowerManager:Landroid/os/IPowerManager;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mRetryAlertDialog:Landroid/app/AlertDialog;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

.field private mSilentRingerRequested:Z

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mUpdateScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    .line 98
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/CallNotifier;->VDBG:Z

    .line 201
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallNotifier;->sbShowAgainChecked:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 8
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 284
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 137
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mOtaCallToneStart:Z

    .line 150
    iput v6, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 153
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 187
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    .line 200
    const-string v3, "fid_34387_multimode"

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->FID_34387_MULTIMODE:Ljava/lang/String;

    .line 202
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    .line 203
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mModeSwitchDialog:Landroid/app/AlertDialog;

    .line 215
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mEndingBeforeSwitch:Z

    .line 216
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mUpdateScreen:Z

    .line 220
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 222
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCFUFirst:Z

    .line 226
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 227
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;

    .line 239
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    .line 240
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 248
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mPhoneIsCdma:Z

    .line 250
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 252
    iput-boolean v6, p0, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    .line 256
    iput v6, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 272
    iput v4, p0, Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I

    .line 279
    iput v4, p0, Lcom/android/phone/CallNotifier;->mApState:I

    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->blockedIncomingCallList:Ljava/util/ArrayList;

    .line 668
    new-instance v3, Lcom/android/phone/CallNotifier$3;

    invoke-direct {v3, p0}, Lcom/android/phone/CallNotifier$3;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 285
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 286
    iget-object v3, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 287
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 288
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 290
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 291
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mPhoneIsCdma:Z

    .line 298
    :try_start_0
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    :goto_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mPowerManager:Landroid/os/IPowerManager;

    .line 311
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 312
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 314
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 316
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 321
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "callstatus"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 322
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "cfu_at_powerup"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCFUFirst:Z

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cfu at powerup : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCFUFirst:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 324
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/android/phone/CallNotifier;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 328
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v3, :cond_1

    .line 329
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    new-instance v5, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v5, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 339
    :cond_1
    return-void

    .line 300
    .end local v1           #sp:Landroid/content/SharedPreferences;
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 301
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "CallNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_0
.end method

.method private AutoRedialForNbpcd(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2339
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "AutoRedialForNbpcd()..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2341
    :cond_0
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_dialing_state"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 2344
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRedialForNbpcd: Original Number is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_origin_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2347
    :cond_1
    sget-object v2, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_origin_number:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 2382
    :cond_2
    :goto_0
    return-void

    .line 2357
    :cond_3
    new-instance v1, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;-><init>()V

    .line 2359
    .local v1, fwNumberHandler:Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
    sget-object v2, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_origin_number:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_dialed_by:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2363
    .local v0, finalNumber:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 2364
    sput-boolean v5, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    .line 2378
    .end local v1           #fwNumberHandler:Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
    :cond_4
    :goto_1
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRedialForNbpcd: finalNumber Number is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2379
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 2380
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 2381
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    goto :goto_0

    .line 2366
    .restart local v1       #fwNumberHandler:Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
    :cond_6
    sput-boolean v4, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    .line 2367
    sget-object v0, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_origin_number:Ljava/lang/String;

    goto :goto_1

    .line 2370
    .end local v0           #finalNumber:Ljava/lang/String;
    .end local v1           #fwNumberHandler:Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
    :cond_7
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "AutoRedialForNbpcd: getOrigDialString from connection"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2372
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    .line 2373
    .restart local v0       #finalNumber:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 2374
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "AutoRedialForNbpcd: dial string is null"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private EriCompleteUpdate(I)V
    .locals 11
    .parameter "streamtype"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v10, "CallNotifier"

    .line 1467
    if-nez p1, :cond_c

    .line 1468
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1469
    .local v0, c:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x0

    .line 1470
    .local v2, isEmergencyNumber:Z
    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 1473
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_connect_tone"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1474
    .local v3, onCallConnectTone:I
    if-eqz v2, :cond_4

    .line 1475
    sget-boolean v5, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v5, :cond_1

    const-string v5, "EriCompleteUpdate: it is an emergency call."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1476
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1477
    .local v1, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v5, :cond_2

    .line 1478
    new-instance v5, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v5, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1480
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_4

    .line 1481
    :cond_3
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_tone"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1484
    iget v5, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v5, :cond_4

    .line 1487
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v5}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$700(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1492
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_7

    .line 1493
    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    if-eqz v5, :cond_8

    .line 1494
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "CallNotifier: ERIComplete Start playing REDIAL Tone."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1495
    :cond_5
    const/16 v4, 0xb

    .line 1496
    .local v4, toneToPlay:I
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1507
    .end local v4           #toneToPlay:I
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1523
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #isEmergencyNumber:Z
    .end local v3           #onCallConnectTone:I
    :cond_7
    :goto_1
    return-void

    .line 1497
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v2       #isEmergencyNumber:Z
    .restart local v3       #onCallConnectTone:I
    :cond_8
    if-ne v3, v7, :cond_9

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    if-nez v5, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    if-ne v3, v7, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    if-nez v5, :cond_6

    if-eqz v2, :cond_6

    iget v5, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-nez v5, :cond_6

    .line 1501
    :cond_a
    sget-boolean v5, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v5, :cond_b

    const-string v5, "CallNotifier: ERIComplete Start playing CALL_CONNECT Tone."

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1502
    :cond_b
    const/16 v4, 0xd

    .line 1503
    .restart local v4       #toneToPlay:I
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1504
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    goto :goto_0

    .line 1509
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #isEmergencyNumber:Z
    .end local v3           #onCallConnectTone:I
    .end local v4           #toneToPlay:I
    :cond_c
    if-ne p1, v9, :cond_7

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_7

    iget-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v5, :cond_7

    .line 1512
    iget v5, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    if-ne v5, v9, :cond_d

    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_d

    .line 1513
    const-string v5, "CallNotifier"

    const-string v5, "CallNotifier: ERI playback complete, start Caller ID Repeat"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const-string v5, "Caller id repeat"

    invoke-direct {p0, v5}, Lcom/android/phone/CallNotifier;->onCallerIdReadout(Ljava/lang/String;)V

    goto :goto_1

    .line 1517
    :cond_d
    const-string v5, "CallNotifier"

    const-string v5, "CallNotifier: ERI playback complete, Ring only or Caller ID play once. Start Ringer !!!"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iput-boolean v7, p0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    .line 1520
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->StartRingerTimer()V

    goto :goto_1
.end method

.method private PlayIncEriTone()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1418
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1419
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isRingerModeSilent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    move v2, v5

    .line 1421
    .local v2, ring_mute:Z
    :goto_0
    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1423
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallNotifier: Play Incoming ERI"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1425
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1426
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getCdmaEriAlertUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/EriAudio;->play(Landroid/net/Uri;I)V

    .line 1428
    :try_start_0
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "turn on led"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1429
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-interface {v3, v4, v5}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    :cond_3
    :goto_1
    return-void

    .line 1419
    .end local v2           #ring_mute:Z
    :cond_4
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 1430
    .restart local v2       #ring_mute:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1432
    .local v1, ex:Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "exception: turn on led"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1435
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_1
.end method

.method private StartRingerTimer()V
    .locals 3

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCurrentRingerUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCurrentRingerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 1414
    const/16 v0, 0x1f

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 1415
    return-void
.end method

.method private StopIncEriTone()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1f

    const/4 v4, 0x0

    .line 1440
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1443
    :try_start_0
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "turn off led"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const v3, 0xffffff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/EriAudio;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/EriAudio;->getStreamType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1453
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/EriAudio;->stop()V

    .line 1455
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1457
    :cond_2
    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mCurrentRingerUri:Landroid/net/Uri;

    .line 1458
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    .line 1459
    invoke-virtual {p0, v5}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1461
    :cond_3
    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mCurrentRingerUri:Landroid/net/Uri;

    .line 1462
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    .line 1463
    invoke-virtual {p0, v5}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1464
    return-void

    .line 1445
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1447
    .local v0, ex:Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "exception: turn off led"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/phone/CallNotifier;->sbShowAgainChecked:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/phone/CallNotifier;->sbShowAgainChecked:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/CallNotifier;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/phone/CallNotifier;->VDBG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/CallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mOtaCallToneStart:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/CallNotifier;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->stopInCallTone()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/phone/CallNotifier;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mModeSwitchDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showModeSwitchDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/CallNotifier;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method private attemptAutoRetryCall(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "number"
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2392
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "attemptAutoRetryCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2393
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_auto_retry"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2396
    .local v0, autoretrySetting:I
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    if-nez v1, :cond_3

    .line 2397
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "attemptAutoRetryCall: ok to try redialing"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2398
    :cond_1
    if-ne v0, v4, :cond_2

    .line 2401
    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 2402
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 2403
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 2404
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2425
    :goto_0
    return-void

    .line 2409
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 2410
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallNotifier;->showCallNotConnectedRetryDialog(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 2413
    :cond_3
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "attemptAutoRetryCall: already redialed. Cleanup and show call lost"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2414
    :cond_4
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attemptAutoRetryCall: mPreviousCdmaCallState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2415
    :cond_5
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 2417
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_7

    .line 2418
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "attemptAutoRetryCall: show call not connected notice."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2419
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallNotifier;->showCallNotConnectedDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2421
    :cond_7
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "attemptAutoRetryCall: show call lost notice."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2422
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallNotifier;->showCallNotConnectedDialog(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private callVibrate(Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    :try_start_0
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v2

    if-eqz p1, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_1

    const-string v7, "hungup_vibrator"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_1

    move v6, v9

    :goto_0
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v10

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v7

    if-nez v7, :cond_3

    const-wide/16 v7, 0xc8

    cmp-long v7, v2, v7

    if-gez v7, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_3

    const-string v7, "outgoing_vibrator"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v9, :cond_3

    move v6, v9

    goto :goto_0

    :cond_3
    move v6, v10

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private callVibrateHungup()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->callVibrate(Z)V

    return-void
.end method

.method private callVibrateOutgoing()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->callVibrate(Z)V

    return-void
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "conn"

    .prologue
    .line 3499
    const/4 v1, 0x0

    .line 3500
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 3502
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1

    .line 3503
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 3507
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 3505
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 3
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 3452
    const/4 v0, 0x0

    .line 3454
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3455
    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3456
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3489
    :cond_0
    :goto_0
    return-object v0

    .line 3458
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3466
    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3468
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 3471
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3472
    invoke-static {}, Lcom/android/phone/Utils;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3474
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3477
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3479
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpecialNumberEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3480
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->ConvertBackDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3485
    :cond_6
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 3521
    if-nez p2, :cond_2

    .line 3522
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3528
    .local v0, presentation:I
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3529
    :cond_1
    return v0

    .line 3524
    .end local v0           #presentation:I
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3525
    .restart local v0       #presentation:I
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isHDMICall()Z
    .locals 4

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, nHDMIStatus:I
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->checkIncomingCallForHDMI(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    .line 686
    const/4 v1, 0x0

    .line 687
    .local v1, ret:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHDMICall : HDMI Call  send ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 688
    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 689
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 690
    const/4 v1, 0x1

    .line 692
    :cond_0
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3533
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    return-void
.end method

.method private logCallIntoCallLog(Ljava/lang/String;JIII)V
    .locals 8
    .parameter "number"
    .parameter "date"
    .parameter "duration"
    .parameter "presentation"
    .parameter "calllogtype"

    .prologue
    .line 3819
    new-instance v0, Lcom/android/phone/CallNotifier$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p6

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/CallNotifier$8;-><init>(Lcom/android/phone/CallNotifier;Ljava/lang/String;IIJI)V

    .line 3833
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3834
    return-void
.end method

.method private onBatteryLow()V
    .locals 2

    .prologue
    .line 2587
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2593
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 2594
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 2596
    :cond_1
    return-void
.end method

.method private onCallerIdReadout(Ljava/lang/String;)V
    .locals 6
    .parameter "utteranceId"

    .prologue
    const/4 v5, 0x0

    .line 3735
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3738
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3739
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->startVibrator()V

    .line 3742
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 3744
    :cond_1
    const-string v3, "CallNotifier"

    const-string v4, "skipping readout because volume is zero"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    :goto_0
    return-void

    .line 3748
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 3749
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v4, 0x7f0b0395

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3751
    .local v2, readTxt:Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3752
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 3753
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3761
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 3763
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 3765
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3766
    .local v1, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "streamType"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3767
    const-string v3, "utteranceId"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3768
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v2, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 3754
    .end local v1           #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerNumber:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 3755
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3757
    :cond_4
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const v4, 0x7f0b0138

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerName:Ljava/lang/String;

    .line 3758
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 19
    .parameter "r"

    .prologue
    .line 3026
    sget-boolean v16, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 3027
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 3028
    const-string v16, "CallNotifier"

    const-string v17, "Call waiting event received in error condition "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    :cond_1
    :goto_0
    return-void

    .line 3032
    :cond_2
    sget-boolean v16, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v16, :cond_3

    const-string v16, "Call waiting event received, setting current CDMA Call state to SINGLE ACTIVE !!!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3035
    :cond_3
    const/16 v16, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3036
    const/16 v16, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 3039
    sget-boolean v16, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    if-eqz v16, :cond_9

    .line 3040
    sget-object v16, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v16, :cond_9

    .line 3041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v9, v0

    .line 3042
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    if-eqz v16, :cond_9

    .line 3043
    const/4 v4, 0x1

    .line 3044
    .local v4, calltype:I
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 3045
    .local v5, cn:Lcom/android/internal/telephony/Connection;
    const/4 v10, 0x0

    .line 3046
    .local v10, phoneNumber:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 3047
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 3049
    :cond_4
    sget-boolean v16, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v16, :cond_5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PhoneUtils.CallerInfoToken info.currentInfo.phoneNumber"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3051
    :cond_5
    const/4 v11, 0x0

    .line 3052
    .local v11, result:I
    if-eqz v10, :cond_6

    .line 3053
    const/16 v16, 0x1

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    move-object v0, v10

    move v1, v4

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneHubService;->PhoneCheckNumber(Ljava/lang/String;IZI)I

    move-result v11

    .line 3057
    :cond_6
    sget-boolean v16, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onCdmaCallWaiting , mPhoneCheckService PhoneCheckNumber result"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3058
    :cond_7
    const/16 v16, 0x2

    move/from16 v0, v16

    move v1, v11

    if-eq v0, v1, :cond_8

    const/16 v16, 0x3

    move/from16 v0, v16

    move v1, v11

    if-ne v0, v1, :cond_9

    .line 3060
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 3062
    const/16 v16, 0xe

    const-wide/16 v17, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 3064
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 3075
    .end local v4           #calltype:I
    .end local v5           #cn:Lcom/android/internal/telephony/Connection;
    .end local v9           #phone:Lcom/android/internal/telephony/Phone;
    .end local v10           #phoneNumber:Ljava/lang/String;
    .end local v11           #result:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 3076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 3082
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v16

    if-nez v16, :cond_c

    .line 3083
    sget-boolean v16, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v16, :cond_b

    const-string v16, "- showing incoming call (CDMA call waiting)..."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3084
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 3088
    :cond_c
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 3089
    const/16 v16, 0xd

    const-wide/16 v17, 0x4e20

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 3098
    :cond_d
    const/16 v16, 0xe

    const-wide/16 v17, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 3102
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 3103
    .local v6, cwInfo:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    move-object v0, v6

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    move/from16 v17, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/android/phone/PhoneUtils;->isIncomingCallRestricted(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 3106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    .line 3112
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 3113
    .local v7, infoCW:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget v8, v7, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 3114
    .local v8, isPresent:I
    sget-boolean v16, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v16, :cond_f

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onCdmaCallWaiting: isPresent="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3115
    :cond_f
    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 3116
    iget v15, v7, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 3117
    .local v15, uSignalType:I
    iget v13, v7, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 3118
    .local v13, uAlertPitch:I
    iget v14, v7, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 3119
    .local v14, uSignal:I
    sget-boolean v16, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v16, :cond_10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onCdmaCallWaiting: uSignalType="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", uAlertPitch="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", uSignal="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3122
    :cond_10
    invoke-static {v15, v13, v14}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v12

    .line 3126
    .local v12, toneID:I
    new-instance v16, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto/16 :goto_0
.end method

.method private onCfiChanged(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 2538
    sget-boolean v2, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCfiChanged(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2541
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "callstatus"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2542
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2543
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cfu_at_powerup"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2544
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2547
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    .line 2548
    return-void
.end method

.method private onCustomRingQueryComplete()V
    .locals 5

    .prologue
    const-string v4, "CallNotifier"

    .line 1012
    const/4 v0, 0x0

    .line 1013
    .local v0, isQueryExecutionTimeExpired:Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1014
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1015
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1016
    const/4 v0, 0x1

    .line 1018
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    if-eqz v0, :cond_1

    .line 1022
    const-string v1, "CallNotifier"

    const-string v1, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/provider/Checkin$Events$Tag;->PHONE_UI:Lcom/motorola/android/provider/Checkin$Events$Tag;

    const-string v3, "using default incoming call behavior"

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 1040
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    .line 1041
    const-string v1, "CallNotifier"

    const-string v1, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_0
    return-void

    .line 1018
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1048
    :cond_2
    sget-boolean v1, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1049
    :cond_3
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_6

    .line 1051
    const-string v1, "Caller id then ring"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onCallerIdReadout(Ljava/lang/String;)V

    .line 1069
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1070
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0

    .line 1052
    :cond_6
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_7

    .line 1054
    const-string v1, "Caller id repeat"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->onCallerIdReadout(Ljava/lang/String;)V

    goto :goto_1

    .line 1056
    :cond_7
    const-string v1, "CallNotifier"

    const-string v1, "Ring only"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1059
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    if-nez v1, :cond_4

    .line 1060
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->PlayIncEriTone()V

    goto :goto_1

    .line 1063
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_1
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 34
    .parameter "r"

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->callVibrateHungup()V

    .line 1738
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect()...  CallManager state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1740
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/Connection;

    .line 1741
    .local v22, c:Lcom/android/internal/telephony/Connection;
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1

    if-eqz v22, :cond_1

    .line 1742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onDisconnect: cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", incoming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", date = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1748
    :cond_1
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1749
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v27

    .line 1755
    .local v27, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    if-eqz v22, :cond_5

    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->blockedIncomingCallList:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/phone/PhoneUtils;->isIncomingCallRestricted(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->blockedIncomingCallList:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1762
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v13

    .line 1763
    .local v13, ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1764
    .local v5, logNumber:Ljava/lang/String;
    if-eqz v13, :cond_4

    iget v4, v13, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move v9, v4

    .line 1765
    .local v9, newPresentation:I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/phone/CallNotifier;->logCallIntoCallLog(Ljava/lang/String;JIII)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2330
    .end local v5           #logNumber:Ljava/lang/String;
    .end local v9           #newPresentation:I
    .end local v13           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_2
    :goto_2
    return-void

    .line 1751
    .end local v27           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v27, v0

    .restart local v27       #phone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 1764
    .restart local v5       #logNumber:Ljava/lang/String;
    .restart local v13       #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    move v9, v4

    goto :goto_1

    .line 1774
    .end local v5           #logNumber:Ljava/lang/String;
    .end local v13           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  CallNotifier: onDisconnect: mEndingBeforeSwitch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mEndingBeforeSwitch:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1775
    :cond_6
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  CallNotifier: onDisconnect: mUpdateScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mUpdateScreen:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1776
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mEndingBeforeSwitch:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1778
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "  CallNotifier: onDisconnect: Still answering 3rd call...switch"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1779
    :cond_8
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 1781
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mUpdateScreen:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 1786
    const/16 v30, 0x0

    .line 1787
    .local v30, screenTurnedOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1788
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 1789
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    sget-object v5, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1790
    const/16 v30, 0x1

    .line 1792
    :cond_a
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenTurnedOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1795
    :cond_b
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_e

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1803
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->setApState(I)V

    .line 1807
    :cond_c
    if-eqz v27, :cond_e

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_d

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 1809
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/phone/PhoneApp;->mEmergencyCallDelayedRadioOff:Z

    if-eqz v4, :cond_e

    .line 1810
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/phone/PhoneApp;->mEmergencyCallDelayedRadioOff:Z

    .line 1816
    :cond_e
    if-eqz v27, :cond_10

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 1818
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_f

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1826
    :cond_f
    const/16 v4, 0xd

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1827
    const/16 v4, 0xe

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1828
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->StopIncEriTone()V

    .line 1844
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v29

    .line 1845
    .local v29, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_34

    .line 1846
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1849
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_11

    const-string v4, "cancelCallInProgressNotification()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1850
    :cond_11
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1871
    :goto_3
    const/16 v33, 0x0

    .line 1872
    .local v33, toneToPlay:I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopInCallTone()V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network_lost_tone"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 1880
    .local v26, onCallLostTone:I
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    .line 1884
    if-eqz v22, :cond_17

    .line 1885
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v23

    .line 1886
    .local v23, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect - disconnect cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1890
    :cond_12
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_13

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_15

    .line 1893
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1894
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_14

    const-string v4, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1895
    :cond_14
    const/16 v33, 0xc

    .line 1902
    :cond_15
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_4b

    .line 1903
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_39

    .line 1904
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_16

    const-string v4, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1905
    :cond_16
    const/16 v33, 0x2

    .line 1965
    .end local v23           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_17
    :goto_5
    if-nez v33, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_1a

    if-eqz v22, :cond_1a

    .line 1968
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v23

    .line 1969
    .restart local v23       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_18

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_18

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_1a

    .line 1972
    :cond_18
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_19

    const-string v4, "- need to play CALL_ENDED tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1973
    :cond_19
    const/16 v33, 0x5

    .line 1974
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 1978
    .end local v23           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_1d

    .line 1981
    if-nez v33, :cond_1b

    .line 1982
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1985
    :cond_1b
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_4d

    if-nez v30, :cond_4d

    .line 1993
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_1c

    const-string v4, "onDisconnect: force InCallScreen to finish()"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1994
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 2001
    :cond_1d
    :goto_6
    if-eqz v22, :cond_30

    .line 2002
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 2003
    .local v20, number:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v16

    .line 2004
    .local v16, date:J
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v18

    .line 2005
    .local v18, duration:J
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v23

    .line 2011
    .restart local v23       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 2013
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_1e

    sget-boolean v4, Lcom/android/phone/PhoneApp;->drivingModeCallFlagged:Z

    if-eqz v4, :cond_4f

    :cond_1e
    const/4 v4, 0x3

    move v15, v4

    .line 2020
    .local v15, callLogType:I
    :goto_7
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- callLogType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2023
    :cond_1f
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NBPCD_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_26

    .line 2024
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v13

    .line 2026
    .restart local v13       #ci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2027
    .restart local v5       #logNumber:Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onDisconnect(): logNumber set to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2028
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v14

    .line 2046
    .local v14, presentation:I
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_51

    const/4 v4, 0x1

    move/from16 v32, v4

    .line 2050
    .local v32, shouldNotlogEmergencyNumber:Z
    :goto_8
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_52

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 2052
    .local v25, isOtaNumber:Z
    :goto_9
    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v24

    .line 2054
    .local v24, isEmergencyNumber:Z
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_21

    .line 2055
    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    move v4, v0

    if-eqz v4, :cond_21

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object v4, v0

    if-eqz v4, :cond_21

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    move-object v4, v0

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$800(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 2063
    :cond_21
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v21

    .line 2065
    .local v21, app:Lcom/android/phone/PhoneApp;
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTR33129: eNumber = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2068
    :cond_22
    sget-boolean v4, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_24

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->isPhoneShuttingDown()Z

    move-result v4

    if-nez v4, :cond_24

    .line 2069
    if-eqz v24, :cond_24

    .line 2071
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->restoreUserBacklightSettings()V

    .line 2072
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_23

    const-string v4, "FTR33129: onDisconnect(), change emergency call display backlight settings"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2073
    :cond_23
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/PhoneApp;->changeBacklightSettings()V

    .line 2079
    :cond_24
    if-nez v25, :cond_26

    if-eqz v24, :cond_25

    if-nez v32, :cond_26

    .line 2082
    :cond_25
    new-instance v10, Lcom/android/phone/CallNotifier$4;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v20}, Lcom/android/phone/CallNotifier$4;-><init>(Lcom/android/phone/CallNotifier;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;IIJJLjava/lang/String;)V

    .line 2189
    .local v10, t:Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 2192
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->getDisconnectCauseResourceId(Lcom/android/internal/telephony/Connection;)I

    move-result v28

    .line 2193
    .local v28, resId:I
    const v4, 0x7f0b0300

    move/from16 v0, v28

    move v1, v4

    if-ne v0, v1, :cond_55

    .line 2194
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_26

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_26

    .line 2197
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_54

    .line 2198
    .end local v5           #logNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_53

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-wide/from16 v1, v18

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhoneApp;->showEndCallToast(JLjava/lang/String;)V

    .line 2227
    .end local v10           #t:Ljava/lang/Thread;
    .end local v13           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #presentation:I
    .end local v21           #app:Lcom/android/phone/PhoneApp;
    .end local v24           #isEmergencyNumber:Z
    .end local v25           #isOtaNumber:Z
    .end local v28           #resId:I
    .end local v32           #shouldNotlogEmergencyNumber:Z
    :cond_26
    :goto_a
    const/4 v4, 0x3

    if-ne v15, v4, :cond_27

    .line 2231
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 2238
    :cond_27
    if-eqz v33, :cond_29

    .line 2244
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v4, v5, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_56

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isRingerModeSilent()Z

    move-result v4

    if-eqz v4, :cond_56

    const/4 v4, 0x1

    move/from16 v31, v4

    .line 2250
    .local v31, shouldBeSilenced:Z
    :goto_b
    if-nez v31, :cond_29

    .line 2252
    const/16 v4, 0xe

    move/from16 v0, v33

    move v1, v4

    if-ne v0, v1, :cond_57

    .line 2253
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- starting media tone ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2254
    :cond_28
    new-instance v4, Lcom/android/phone/CallNotifier$MediaTonePlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier$MediaTonePlayer;-><init>(Lcom/android/phone/CallNotifier;Landroid/content/Context;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$MediaTonePlayer;->playSound()V

    .line 2274
    .end local v31           #shouldBeSilenced:Z
    :cond_29
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_5a

    .line 2279
    if-nez v30, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_59

    .line 2280
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_2a

    const-string v4, "- NOT showing in-call screen; releasing wake locks!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2281
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    sget-object v5, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 2282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    sget-object v5, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 2291
    :cond_2b
    :goto_d
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect()...  previous phone state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2292
    :cond_2c
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_2d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect()...  DisconnectCause is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2293
    :cond_2d
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect()...  mPhoneIsCdma is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mPhoneIsCdma:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2297
    :cond_2e
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NBPCD_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_5b

    .line 2298
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_2f

    const-string v4, "onDisconnect()...  cause is: CDMA_NBPCD_FAILURE"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2299
    :cond_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->AutoRedialForNbpcd(Lcom/android/internal/telephony/Connection;)V

    .line 2323
    .end local v15           #callLogType:I
    .end local v16           #date:J
    .end local v18           #duration:J
    .end local v20           #number:Ljava/lang/String;
    .end local v23           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_30
    :goto_e
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLibCameraLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->inEmergencyCall()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2324
    const/16 v4, 0x11

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 1852
    .end local v26           #onCallLostTone:I
    .end local v33           #toneToPlay:I
    :cond_31
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_32

    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1854
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    move v4, v0

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v4, v0

    if-eqz v4, :cond_33

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1858
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_3

    .line 1861
    :cond_34
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_35

    const-string v4, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1863
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    move v4, v0

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v4, v0

    if-eqz v4, :cond_36

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1866
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_3

    .line 1897
    .restart local v23       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v26       #onCallLostTone:I
    .restart local v33       #toneToPlay:I
    :cond_37
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_38

    const-string v4, "- need to play CALL_END tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1898
    :cond_38
    const/16 v33, 0x5

    goto/16 :goto_4

    .line 1906
    :cond_39
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_3b

    .line 1907
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_3a

    const-string v4, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1908
    :cond_3a
    const/16 v33, 0x3

    goto/16 :goto_5

    .line 1911
    :cond_3b
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_3d

    .line 1912
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_3c

    const-string v4, "- need to play INCOMING_MISSED tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1913
    :cond_3c
    const/16 v33, 0x5

    goto/16 :goto_5

    .line 1915
    :cond_3d
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_3f

    .line 1916
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_3e

    const-string v4, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1917
    :cond_3e
    const/16 v33, 0x7

    goto/16 :goto_5

    .line 1918
    :cond_3f
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_41

    .line 1919
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_40

    const-string v4, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1920
    :cond_40
    const/16 v33, 0x8

    goto/16 :goto_5

    .line 1921
    :cond_41
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_43

    .line 1922
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_42

    const-string v4, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1923
    :cond_42
    const/16 v33, 0x9

    goto/16 :goto_5

    .line 1924
    :cond_43
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_45

    .line 1925
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_44

    const-string v4, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1926
    :cond_44
    const/16 v33, 0xa

    goto/16 :goto_5

    .line 1927
    :cond_45
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_47

    .line 1928
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_46

    const-string v4, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1929
    :cond_46
    const/16 v33, 0x11

    goto/16 :goto_5

    .line 1931
    :cond_47
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_49

    .line 1932
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_48

    const-string v4, "- need to play SOFTERROR LITE tone!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1933
    :cond_48
    const/16 v33, 0x10

    goto/16 :goto_5

    .line 1936
    :cond_49
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_17

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_17

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_17

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NBPCD_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_17

    if-eqz v27, :cond_17

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    .line 1942
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- DisconnectCause is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "- play TONE_CDMA_DROP_WHILE_DIALING!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1943
    :cond_4a
    const/16 v33, 0xe

    goto/16 :goto_5

    .line 1948
    :cond_4b
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 1949
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_17

    .line 1950
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_4c

    const-string v4, "- need to play call drop tone for UMTS rat!"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1952
    :cond_4c
    const/16 v33, 0x9

    goto/16 :goto_5

    .line 1996
    .end local v23           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_4d
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_4e

    const-string v4, "onDisconnect: In call screen. Set short timeout."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1997
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearUserActivityTimeout()V

    goto/16 :goto_6

    .line 2013
    .restart local v16       #date:J
    .restart local v18       #duration:J
    .restart local v20       #number:Ljava/lang/String;
    .restart local v23       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_4f
    const/4 v4, 0x1

    move v15, v4

    goto/16 :goto_7

    .line 2017
    :cond_50
    const/4 v15, 0x2

    .restart local v15       #callLogType:I
    goto/16 :goto_7

    .line 2046
    .restart local v5       #logNumber:Ljava/lang/String;
    .restart local v13       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v14       #presentation:I
    :cond_51
    const/4 v4, 0x0

    move/from16 v32, v4

    goto/16 :goto_8

    .line 2050
    .restart local v32       #shouldNotlogEmergencyNumber:Z
    :cond_52
    const/4 v4, 0x0

    move/from16 v25, v4

    goto/16 :goto_9

    .line 2205
    .end local v5           #logNumber:Ljava/lang/String;
    .restart local v10       #t:Ljava/lang/Thread;
    .restart local v21       #app:Lcom/android/phone/PhoneApp;
    .restart local v24       #isEmergencyNumber:Z
    .restart local v25       #isOtaNumber:Z
    .restart local v28       #resId:I
    :cond_53
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call collision happen, call manager state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2210
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-wide/from16 v1, v18

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhoneApp;->showEndCallToast(JLjava/lang/String;)V

    goto/16 :goto_a

    .line 2214
    .restart local v5       #logNumber:Ljava/lang/String;
    :cond_55
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_26

    .line 2220
    .end local v5           #logNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-wide/from16 v1, v18

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhoneApp;->showEndCallToast(JLjava/lang/String;)V

    goto/16 :goto_a

    .line 2244
    .end local v10           #t:Ljava/lang/Thread;
    .end local v13           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #presentation:I
    .end local v21           #app:Lcom/android/phone/PhoneApp;
    .end local v24           #isEmergencyNumber:Z
    .end local v25           #isOtaNumber:Z
    .end local v28           #resId:I
    .end local v32           #shouldNotlogEmergencyNumber:Z
    :cond_56
    const/4 v4, 0x0

    move/from16 v31, v4

    goto/16 :goto_b

    .line 2257
    .restart local v31       #shouldBeSilenced:Z
    :cond_57
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_58

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- starting post-disconnect tone ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2258
    :cond_58
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    goto/16 :goto_c

    .line 2284
    .end local v31           #shouldBeSilenced:Z
    :cond_59
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_2b

    const-string v4, "- still showing in-call screen; not releasing wake locks."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2287
    :cond_5a
    sget-boolean v4, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v4, :cond_2b

    const-string v4, "- phone still in use; not releasing wake locks."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2301
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_5d

    :cond_5c
    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_5d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_5d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_5d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_5d

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5d

    .line 2310
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->attemptAutoRetryCall(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_e

    .line 2311
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_30

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v23

    move-object v1, v4

    if-eq v0, v1, :cond_30

    invoke-interface/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_30

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier;->showCallNotConnectedDialog(Landroid/content/Context;Z)V

    goto/16 :goto_e
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 2931
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    move-object v2, v0

    .line 2933
    .local v2, displayInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
    if-eqz v2, :cond_1

    .line 2934
    iget-object v1, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 2935
    .local v1, displayInfo:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisplayInfo: displayInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2936
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3, v1}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 2939
    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 2942
    .end local v1           #displayInfo:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onMwiChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2524
    sget-boolean v0, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2525
    :cond_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    .line 2526
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "r"

    .prologue
    .line 698
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 699
    .local v1, c:Lcom/android/internal/telephony/Connection;
    sget-boolean v11, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onNewRingingConnection(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 700
    :cond_0
    if-nez v1, :cond_2

    .line 701
    const-string v11, "CallNotifier"

    const-string v12, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_1
    :goto_0
    return-void

    .line 706
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 707
    .local v8, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 713
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-boolean v11, v11, Lcom/android/phone/PhoneApp;->mIsActivityLockDeviceMode:Z

    if-eqz v11, :cond_3

    .line 715
    const-string v11, "CallNotifier"

    const-string v12, "CallNotifier: rejecting incoming call: device isn\'t provisioned"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 723
    :cond_3
    invoke-static {v5}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 724
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v12, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    move v0, v11

    .line 726
    .local v0, activateState:Z
    :goto_1
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v12, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    move v3, v11

    .line 728
    .local v3, dialogState:Z
    :goto_2
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v9, v11, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 730
    .local v9, spcState:Z
    if-eqz v9, :cond_6

    .line 731
    const-string v11, "CallNotifier"

    const-string v12, "CallNotifier: rejecting incoming call: OTA call is active"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 724
    .end local v0           #activateState:Z
    .end local v3           #dialogState:Z
    .end local v9           #spcState:Z
    :cond_4
    const/4 v11, 0x0

    move v0, v11

    goto :goto_1

    .line 726
    .restart local v0       #activateState:Z
    :cond_5
    const/4 v11, 0x0

    move v3, v11

    goto :goto_2

    .line 734
    .restart local v3       #dialogState:Z
    .restart local v9       #spcState:Z
    :cond_6
    if-nez v0, :cond_7

    if-eqz v3, :cond_9

    .line 735
    :cond_7
    if-eqz v3, :cond_8

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 736
    :cond_8
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 737
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 745
    .end local v0           #activateState:Z
    .end local v3           #dialogState:Z
    .end local v9           #spcState:Z
    :cond_9
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10d0029

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v1, :cond_a

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    iget-object v12, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/phone/DriveSmartUtils;->flagDrivingModeCall(Lcom/android/phone/BluetoothHandsfree;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 749
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/phone/PhoneApp;->drivingModeCallFlagged:Z

    .line 752
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 755
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/DriveSmartUtils;->sendCallerReplySms(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->isHDMICall()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 762
    new-instance v11, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v12, 0xf

    invoke-direct {v11, p0, v12}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v11}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    goto/16 :goto_0

    .line 767
    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.motorola.intent.action.INCOMING_CALL"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    .local v4, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11, v4}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 772
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v11

    if-nez v11, :cond_c

    .line 773
    const-string v11, "CallNotifier"

    const-string v12, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 784
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 785
    invoke-static {}, Lcom/android/phone/PhoneUtils;->lockLibCamera()V

    .line 790
    :cond_d
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    .line 791
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 794
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    .line 796
    .local v10, state:Lcom/android/internal/telephony/Call$State;
    sget-boolean v11, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v11, :cond_f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- connection is ringing!  state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 824
    :cond_f
    sget-boolean v11, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v11, :cond_10

    const-string v11, "Holding wake lock on new incoming connection."

    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 825
    :cond_10
    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v12, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v11, v12}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 827
    sget-boolean v11, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    if-eqz v11, :cond_14

    .line 828
    sget-object v11, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v11, :cond_13

    .line 829
    const-string v11, "mPhoneCheckService != null pass phone number&calllog type to firewall app"

    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 830
    const/4 v2, 0x1

    .line 831
    .local v2, calltype:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 832
    .local v6, phoneNumber:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " PhoneUtils.CallerInfoToken info.currentInfo.phoneNumber"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 833
    const/4 v7, 0x0

    .line 835
    .local v7, result:I
    const/4 v11, 0x1

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    invoke-static {v6, v2, v11, v12}, Lcom/android/phone/PhoneHubService;->PhoneCheckNumber(Ljava/lang/String;IZI)I

    move-result v7

    .line 838
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " onNewRingingConnection , mPhoneCheckService PhoneCheckNumber result"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 839
    const/4 v11, 0x3

    if-ne v11, v7, :cond_11

    .line 840
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 844
    :cond_11
    const/4 v11, 0x2

    if-ne v11, v7, :cond_14

    .line 845
    sget-object v11, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_12

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isBtHeadsetConnected()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 847
    :cond_12
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 855
    .end local v2           #calltype:I
    .end local v6           #phoneNumber:Ljava/lang/String;
    .end local v7           #result:I
    :cond_13
    const-string v11, "mPhoneCheckService equal null and bypass firewall check"

    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 862
    :cond_14
    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 863
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 886
    :goto_3
    sget-boolean v11, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v11, :cond_1

    const-string v11, "- onNewRingingConnection() done."

    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 873
    :cond_15
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    goto :goto_3
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "r"

    .prologue
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->callVibrateOutgoing()V

    .line 1165
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    .line 1166
    .local v8, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v10, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CallNotifier: onPhoneStateChanged: state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1167
    :cond_0
    sget-boolean v10, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " : CallNotifier: onPhoneStateChanged: mEndingBeforeSwitch = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/phone/CallNotifier;->mEndingBeforeSwitch:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1168
    :cond_1
    sget-boolean v10, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " : CallNotifier: onPhoneStateChanged: mUpdateScreen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/phone/CallNotifier;->mUpdateScreen:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1170
    :cond_2
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mUpdateScreen:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mEndingBeforeSwitch:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    :cond_3
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v10, :cond_4

    .line 1171
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mUpdateScreen:Z

    .line 1172
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mEndingBeforeSwitch:Z

    .line 1173
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->setEndingBeforeSwitch(Z)V

    .line 1174
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/phone/PhoneApp;->setUpdateScreen(ZZ)V

    .line 1176
    :cond_4
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mUpdateScreen:Z

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mEndingBeforeSwitch:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 1381
    :cond_5
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v10, :cond_6

    .line 1382
    iget v10, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v10, :cond_6

    .line 1384
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1385
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v10}, Lcom/android/phone/Ringer;->stopVibrator()V

    .line 1389
    :cond_6
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 1390
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1392
    .local v4, inComingCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_2a

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isTonePlaying()Z

    move-result v10

    if-nez v10, :cond_2a

    .line 1395
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v11, 0x1

    invoke-direct {v10, p0, v11}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1406
    .end local v4           #inComingCall:Lcom/android/internal/telephony/Call;
    :cond_7
    :goto_1
    return-void

    .line 1187
    :cond_8
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v10, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09001b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    :cond_9
    const/4 v10, 0x1

    move v6, v10

    .line 1190
    .local v6, isEnableNotificationAlerts:Z
    :goto_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableNotificationAlerts(Z)V

    .line 1196
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "call_connect_tone"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1198
    .local v7, onCallConnectTone:I
    const/4 v5, 0x0

    .line 1199
    .local v5, isEmergencyNumber:Z
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_tone"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 1205
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12

    .line 1208
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v10, :cond_1e

    .line 1209
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1213
    .local v1, callState:Lcom/android/internal/telephony/Call$State;
    :goto_3
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- Current State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1214
    :cond_a
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- mPreviousCdmaCallState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1217
    :cond_b
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1218
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_c

    .line 1219
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    .line 1223
    :cond_c
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v2

    .line 1224
    .local v2, eriaudobj:Lcom/android/phone/EriAudio;
    const/4 v3, 0x0

    .line 1225
    .local v3, eriaudplaying:Z
    if-eqz v2, :cond_1f

    .line 1226
    invoke-virtual {v2}, Lcom/android/phone/EriAudio;->isPlaying()Z

    move-result v3

    .line 1232
    :goto_4
    if-nez v3, :cond_10

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_d

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_d

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_d

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_10

    .line 1238
    :cond_d
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- mPlayedCallConnectTone = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1239
    :cond_e
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    if-eqz v10, :cond_20

    .line 1240
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_f

    const-string v10, "- Start playing REDIAL Tone."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1241
    :cond_f
    const/16 v9, 0xb

    .line 1242
    .local v9, toneToPlay:I
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v10, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1255
    .end local v9           #toneToPlay:I
    :cond_10
    :goto_5
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v10, :cond_11

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_11

    .line 1257
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1261
    :cond_11
    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 1270
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #eriaudobj:Lcom/android/phone/EriAudio;
    .end local v3           #eriaudplaying:Z
    :cond_12
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 1274
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10, v8}, Lcom/android/phone/PhoneApp;->updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V

    .line 1276
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v10, :cond_19

    .line 1277
    sget-boolean v10, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v10, :cond_13

    const-string v10, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1285
    :cond_13
    sget-boolean v10, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v10, :cond_14

    const-string v10, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1286
    :cond_14
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v10}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1288
    sget-boolean v10, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v10, :cond_15

    const-string v10, "StopIncEriTone()... (OFFHOOK state)"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1289
    :cond_15
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->StopIncEriTone()V

    .line 1293
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1297
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v10

    if-nez v10, :cond_16

    .line 1298
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v11, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1299
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v11, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1303
    :cond_16
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_17

    const-string v10, "- updating notification for phone state change..."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1304
    :cond_17
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1306
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1309
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_18

    .line 1311
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->setApState(I)V

    .line 1315
    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneUtils;->inEmergencyCall()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-boolean v10, v10, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    if-eqz v10, :cond_19

    .line 1316
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/phone/PhoneApp;->mEmergencyCallDelayedRadioOff:Z

    .line 1319
    :cond_19
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1b

    .line 1320
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1322
    .restart local v1       #callState:Lcom/android/internal/telephony/Call$State;
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v2

    .line 1323
    .restart local v2       #eriaudobj:Lcom/android/phone/EriAudio;
    const/4 v3, 0x0

    .line 1324
    .restart local v3       #eriaudplaying:Z
    if-eqz v2, :cond_24

    .line 1325
    invoke-virtual {v2}, Lcom/android/phone/EriAudio;->isPlaying()Z

    move-result v3

    .line 1330
    :goto_6
    const/4 v10, 0x1

    if-ne v3, v10, :cond_25

    .line 1331
    sget-boolean v10, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v10, :cond_1a

    const-string v10, "Callnotifier: Skip Emergency Tone, will be played after ERI"

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1357
    :cond_1a
    :goto_7
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1358
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v10, :cond_1b

    iget v10, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v10, :cond_1b

    .line 1362
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$800(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1367
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #eriaudobj:Lcom/android/phone/EriAudio;
    .end local v3           #eriaudplaying:Z
    :cond_1b
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1c

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 1369
    :cond_1c
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1370
    .restart local v1       #callState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1373
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1375
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    #calls: Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->stop()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->access$900(Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;)V

    goto/16 :goto_0

    .line 1187
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v5           #isEmergencyNumber:Z
    .end local v6           #isEnableNotificationAlerts:Z
    .end local v7           #onCallConnectTone:I
    :cond_1d
    const/4 v10, 0x0

    move v6, v10

    goto/16 :goto_2

    .line 1211
    .restart local v5       #isEmergencyNumber:Z
    .restart local v6       #isEnableNotificationAlerts:Z
    .restart local v7       #onCallConnectTone:I
    :cond_1e
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .restart local v1       #callState:Lcom/android/internal/telephony/Call$State;
    goto/16 :goto_3

    .line 1228
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v2       #eriaudobj:Lcom/android/phone/EriAudio;
    .restart local v3       #eriaudplaying:Z
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1243
    :cond_20
    const/4 v10, 0x1

    if-ne v7, v10, :cond_21

    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    if-nez v10, :cond_21

    if-eqz v5, :cond_22

    :cond_21
    const/4 v10, 0x1

    if-ne v7, v10, :cond_10

    iget-boolean v10, p0, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    if-nez v10, :cond_10

    if-eqz v5, :cond_10

    iget v10, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-nez v10, :cond_10

    .line 1247
    :cond_22
    sget-boolean v10, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v10, :cond_23

    const-string v10, "- Start playing CALL_CONNECT Tone."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1248
    :cond_23
    const/16 v9, 0xd

    .line 1249
    .restart local v9       #toneToPlay:I
    new-instance v10, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v10, p0, v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v10}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1250
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/CallNotifier;->mPlayedCallConnectTone:Z

    goto/16 :goto_5

    .line 1327
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v9           #toneToPlay:I
    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 1333
    :cond_25
    if-eqz v5, :cond_1a

    .line 1334
    sget-boolean v10, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v10, :cond_26

    const-string v10, "onPhoneStateChanged -> Eemergency call: Might play tone/vibrate."

    invoke-direct {p0, v10}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1336
    :cond_26
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v10, :cond_27

    .line 1337
    new-instance v10, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v10, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 1340
    :cond_27
    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v10, :cond_28

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v10, :cond_29

    .line 1341
    :cond_28
    iget v10, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v10, :cond_1a

    iget v10, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v10, :cond_1a

    .line 1343
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v10, :cond_1a

    .line 1344
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$700(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto/16 :goto_7

    .line 1347
    :cond_29
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v10, :cond_1a

    .line 1348
    iget v10, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v10, :cond_1a

    .line 1349
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v10, :cond_1a

    .line 1350
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    #calls: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$800(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto/16 :goto_7

    .line 1396
    .end local v1           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #eriaudobj:Lcom/android/phone/EriAudio;
    .end local v3           #eriaudplaying:Z
    .end local v5           #isEmergencyNumber:Z
    .end local v6           #isEnableNotificationAlerts:Z
    .end local v7           #onCallConnectTone:I
    .restart local v4       #inComingCall:Lcom/android/internal/telephony/Call;
    :cond_2a
    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isTonePlaying()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getToneType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    .line 1399
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_2b

    iget-object v10, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->getToneType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_7

    .line 1400
    :cond_2b
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->stopInCallTone()V

    goto/16 :goto_1
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x1

    .line 3353
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3355
    .local v0, playTone:Z
    if-ne v0, v2, :cond_2

    .line 3356
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    if-nez v1, :cond_0

    .line 3357
    new-instance v1, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    invoke-direct {v1, p0}, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    .line 3364
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3367
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    #calls: Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->start()V
    invoke-static {v1}, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->access$2300(Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;)V

    .line 3375
    :cond_1
    :goto_0
    return-void

    .line 3370
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I

    if-ne v1, v2, :cond_1

    .line 3372
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    #calls: Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->stop()V
    invoke-static {v1}, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->access$900(Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;)V

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 2977
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2980
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 3004
    :cond_0
    :goto_0
    return-void

    .line 2983
    :cond_1
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v2, v0

    .line 2985
    .local v2, signalInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v2, :cond_0

    .line 2986
    iget-boolean v1, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 2987
    .local v1, isPresent:Z
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: isPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2988
    :cond_2
    if-eqz v1, :cond_0

    .line 2989
    iget v6, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 2990
    .local v6, uSignalType:I
    iget v4, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 2991
    .local v4, uAlertPitch:I
    iget v5, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 2993
    .local v5, uSignal:I
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: uSignalType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uAlertPitch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uSignal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2996
    :cond_3
    invoke-static {v6, v4, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v3

    .line 3000
    .local v3, toneID:I
    new-instance v7, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v7, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1076
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 1079
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1080
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1081
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1085
    :cond_1
    return-void
.end method

.method private onUnknownMcc(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3786
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 3787
    .local v1, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received PHONE_UNKNOWN_MCC event, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3788
    :cond_0
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3789
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->notifyAssistedDialingUnknownMcc()V

    .line 3790
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    .line 3795
    :goto_0
    return-void

    .line 3792
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelAssistedDialingUnknownMcc()V

    .line 3793
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1588
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1589
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v4, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1590
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1591
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1592
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1593
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fid_34387_multimode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x21

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1596
    :cond_0
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFlexOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x20

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForUnknownMcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1599
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1600
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1601
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1602
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1603
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1604
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1605
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1606
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2509
    sget-boolean v0, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 2512
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 2517
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2519
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->updateIsSpeakerEnabled(Z)V

    .line 2520
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2521
    return-void
.end method

.method private setApState(I)V
    .locals 3
    .parameter "request"

    .prologue
    .line 3558
    iget v1, p0, Lcom/android/phone/CallNotifier;->mApState:I

    if-ne p1, v1, :cond_0

    .line 3573
    :goto_0
    return-void

    .line 3563
    :cond_0
    move v0, p1

    .line 3565
    .local v0, state:I
    if-nez v0, :cond_1

    .line 3568
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getApSettings(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->setApProfile(Landroid/content/Context;I)V

    .line 3572
    :cond_1
    iput v0, p0, Lcom/android/phone/CallNotifier;->mApState:I

    goto :goto_0
.end method

.method private showCallNotConnectedDialog(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "showCallNotConnected"

    .prologue
    .line 2475
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "showCallNotConnectedDialog()..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2477
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2478
    sget-boolean v4, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "showCallNotConnectedDialog: InCallScreen not the foreground Activity! Bailing out..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2501
    :cond_1
    :goto_0
    return-void

    .line 2482
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2483
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030012

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2484
    .local v1, dialogView:Landroid/view/View;
    if-nez v1, :cond_3

    .line 2486
    const-string v4, "CallNotifier"

    const-string v5, "showCallLostDialog: could not find dialog view. Bailing out..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2490
    :cond_3
    const v4, 0x7f070077

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2491
    .local v3, textMsg:Landroid/widget/TextView;
    if-eqz p2, :cond_4

    .line 2492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0156

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2497
    :goto_1
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2498
    .local v0, callLostDialog:Landroid/widget/Toast;
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2499
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 2500
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2494
    .end local v0           #callLostDialog:Landroid/widget/Toast;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showCallNotConnectedRetryDialog(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "number"
    .parameter "phone"

    .prologue
    .line 2433
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "showCallNotConnectedRetryDialog()...."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2434
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 2467
    :goto_0
    return-void

    .line 2438
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v3, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 2440
    new-instance v1, Lcom/android/phone/CallNotifier$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/phone/CallNotifier$5;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 2448
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/CallNotifier$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$6;-><init>(Lcom/android/phone/CallNotifier;)V

    .line 2454
    .local v0, cancelListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0155

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0159

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b015d

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0157

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    .line 2462
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2464
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2466
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showIncomingCall()V
    .locals 2

    .prologue
    .line 1107
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1112
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 1146
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isWakeLockUpdateOnWaiting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1152
    :cond_1
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1153
    :cond_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1154
    return-void

    .line 1113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 12
    .parameter "c"
    .parameter "date"

    .prologue
    .line 3240
    sget-boolean v0, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    if-eqz v0, :cond_2

    .line 3241
    sget-object v0, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v0, :cond_2

    .line 3243
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3244
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 3249
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    const/4 v6, 0x1

    .line 3250
    .local v6, calltype:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 3251
    .local v10, phoneNumber:Ljava/lang/String;
    const/4 v11, 0x0

    .line 3253
    .local v11, result:I
    const/4 v0, 0x0

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-static {v10, v6, v0, v1}, Lcom/android/phone/PhoneHubService;->PhoneCheckNumber(Ljava/lang/String;IZI)I

    move-result v11

    .line 3256
    const/4 v0, 0x2

    if-eq v11, v0, :cond_0

    const/4 v0, 0x3

    if-ne v11, v0, :cond_2

    .line 3285
    .end local v6           #calltype:I
    .end local v9           #phone:Lcom/android/internal/telephony/Phone;
    .end local v10           #phoneNumber:Ljava/lang/String;
    .end local v11           #result:I
    :cond_0
    :goto_1
    return-void

    .line 3246
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .restart local v9       #phone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 3262
    .end local v9           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->retrieveLatestCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v8

    .line 3264
    .local v8, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v8, :cond_6

    .line 3267
    sget-boolean v0, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3268
    :cond_3
    iget-boolean v0, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_4

    .line 3271
    iget-object v7, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3273
    .local v7, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 3277
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    sget-boolean v0, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "showMissedCallNotification: query again..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3278
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    goto :goto_1

    .line 3283
    :cond_6
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showModeSwitchDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3842
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    const/4 v9, 0x7

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3846
    .local v5, settingsNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mModeSwitchDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_1

    .line 3847
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "showModeSwitchDialog existing, quit"

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3919
    :cond_0
    :goto_0
    return-void

    .line 3852
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_2

    .line 3854
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "showModeSwitchDialog in Airplane Mode, quit"

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3859
    :cond_2
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 3860
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03003b

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3861
    .local v3, dialogView:Landroid/view/View;
    if-nez v3, :cond_3

    .line 3863
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "showModeSwitchDialog: could not find dialog view. Bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3867
    :cond_3
    const v7, 0x7f07011b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 3868
    .local v6, textMsg:Landroid/widget/TextView;
    if-nez v6, :cond_4

    .line 3870
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "showModeSwitchDialog: could not find textMsg view. Bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3873
    :cond_4
    const/4 v7, 0x4

    if-eq v5, v7, :cond_5

    const/4 v7, 0x5

    if-eq v5, v7, :cond_5

    const/4 v7, 0x6

    if-ne v5, v7, :cond_6

    .line 3876
    :cond_5
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0236

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3881
    :goto_1
    const v7, 0x7f07011c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3882
    .local v1, checkedTextMsg:Landroid/widget/CheckBox;
    if-nez v1, :cond_7

    .line 3883
    sget-boolean v7, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "showModeSwitchDialog: could not find checkedTextMsg view. Bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3878
    .end local v1           #checkedTextMsg:Landroid/widget/CheckBox;
    :cond_6
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0235

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3887
    .restart local v1       #checkedTextMsg:Landroid/widget/CheckBox;
    :cond_7
    new-instance v2, Lcom/android/phone/CallNotifier$9;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$9;-><init>(Lcom/android/phone/CallNotifier;Landroid/widget/CheckBox;)V

    .line 3897
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/CallNotifier$10;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$10;-><init>(Lcom/android/phone/CallNotifier;Landroid/widget/CheckBox;)V

    .line 3905
    .local v0, cancelListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0b016e

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b015d

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b0238

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallNotifier;->mModeSwitchDialog:Landroid/app/AlertDialog;

    .line 3914
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mModeSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 3916
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mModeSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 3918
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mModeSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "CallNotifier"

    .line 904
    const/4 v2, 0x0

    .line 905
    .local v2, shouldStartQuery:Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 906
    :try_start_0
    iget v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v4, :cond_0

    .line 907
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 908
    const/4 v2, 0x1

    .line 910
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    move v1, v7

    .line 915
    .local v1, isWaiting:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tts_caller_id_readout"

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    .line 917
    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mCallerNumber:Ljava/lang/String;

    .line 918
    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mCallerName:Ljava/lang/String;

    .line 919
    iget v3, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    if-eqz v3, :cond_1

    .line 920
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerNumber:Ljava/lang/String;

    .line 921
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerNumber:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 922
    const-string v3, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller ID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCallerNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_1
    :goto_1
    if-eqz v2, :cond_8

    .line 936
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3, p1, p0, p1}, Lcom/android/phone/PhoneUtils;->retrieveLatestCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 941
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v3, :cond_6

    .line 942
    sget-boolean v3, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 943
    :cond_2
    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v5, p1, v3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 992
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_3
    :goto_2
    return-void

    .line 910
    .end local v1           #isWaiting:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_4
    move v1, v5

    .line 911
    goto :goto_0

    .line 924
    .restart local v1       #isWaiting:Z
    :cond_5
    const-string v3, "CallNotifier"

    const-string v3, "Caller ID is null"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 945
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_6
    sget-boolean v3, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v3, :cond_7

    const-string v3, "- Starting query, posting timeout message."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 947
    :cond_7
    if-nez v1, :cond_3

    .line 948
    const/16 v3, 0x64

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 957
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_8
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/provider/Checkin$Events$Tag;->PHONE_UI:Lcom/motorola/android/provider/Checkin$Events$Tag;

    const-string v5, "multiple incoming call queries attempted"

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 962
    sget-boolean v3, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v3, :cond_9

    const-string v3, "RINGING... (request to ring arrived while query is running)"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 964
    :cond_9
    if-nez v1, :cond_a

    .line 965
    iget v3, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    if-ne v3, v7, :cond_c

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_c

    .line 966
    const-string v3, "CallNotifier"

    const-string v3, "Caller ID then ring"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string v3, "Caller id then ring"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onCallerIdReadout(Ljava/lang/String;)V

    .line 989
    :cond_a
    :goto_3
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 990
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_2

    .line 969
    :cond_c
    iget v3, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_d

    .line 970
    const-string v3, "CallNotifier"

    const-string v3, "Caller ID Repeat"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string v3, "Caller id repeat"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onCallerIdReadout(Ljava/lang/String;)V

    goto :goto_3

    .line 974
    :cond_d
    const-string v3, "CallNotifier"

    const-string v3, "Ring only"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 977
    iget-boolean v3, p0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    if-nez v3, :cond_a

    .line 978
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->PlayIncEriTone()V

    goto :goto_3

    .line 981
    :cond_e
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_3
.end method

.method private declared-synchronized stopInCallTone()V
    .locals 3

    .prologue
    .line 2906
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isTonePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2909
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mOtaCallToneStart:Z

    if-eqz v0, :cond_2

    .line 2913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mOtaCallToneStart:Z

    .line 2918
    :goto_0
    sget-boolean v0, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Setting phoneapp TonePlaying flag to false"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2920
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->setTonePlayingFlag(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2923
    :cond_1
    monitor-exit p0

    return-void

    .line 2916
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mInCallToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2906
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateApState()V
    .locals 2

    .prologue
    .line 3578
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/phone/CallNotifier;->mApState:I

    if-ne v0, v1, :cond_0

    .line 3591
    :goto_0
    return-void

    .line 3583
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isApAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3585
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->setApState(I)V

    goto :goto_0

    .line 3589
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->setApState(I)V

    goto :goto_0
.end method


# virtual methods
.method clearIsRedialCall()V
    .locals 1

    .prologue
    .line 3777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    .line 3778
    return-void
.end method

.method public getApState()I
    .locals 1

    .prologue
    .line 3600
    iget v0, p0, Lcom/android/phone/CallNotifier;->mApState:I

    return v0
.end method

.method getCdmaVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 3223
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    return v0
.end method

.method getIsRedialCall()Z
    .locals 1

    .prologue
    .line 3231
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsRedialCall:Z

    return v0
.end method

.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 3216
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 343
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 666
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 345
    .restart local p1
    :sswitch_0
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "RINGING... (new)"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 351
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v10, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/Connection;

    .line 352
    .local v10, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    .line 353
    .local v13, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x2

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 354
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneUtils;->isIncomingCallRestricted(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 357
    sget-boolean v3, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "Incoming call is restricted, hang it up..."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 358
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->blockedIncomingCallList:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 366
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isPhoneLockedOrScreenOff()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->setShowIncomingCallLockedUI(Z)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v3, v0

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 375
    :cond_4
    const/4 v3, 0x2

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->StopIncEriTone()V

    .line 380
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 381
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto/16 :goto_0

    .line 387
    .end local v10           #c:Lcom/android/internal/telephony/Connection;
    .end local v13           #phone:Lcom/android/internal/telephony/Phone;
    .restart local p1
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 388
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/telephony/PhoneBase;

    .line 390
    .local v12, pb:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->isCustomRingtoneUriNull()Z

    move-result v3

    if-nez v3, :cond_d

    const/16 v3, 0x64

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    move v3, v0

    if-nez v3, :cond_d

    .line 397
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "RINGING... (PHONE_INCOMING_RING event)"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 399
    :cond_6
    sget-boolean v3, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    if-eqz v3, :cond_8

    .line 400
    sget-object v3, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v3, :cond_8

    .line 401
    const-string v3, "mPhoneCheckService != null pass phone number&calllog type to firewall app"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 402
    const/4 v14, 0x0

    .line 403
    .local v14, phoneNumber:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 404
    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 407
    :cond_7
    const/4 v11, 0x1

    .line 408
    .local v11, calltype:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneUtils.CallerInfoToken info.currentInfo.phoneNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 409
    const/4 v3, 0x0

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    invoke-static {v14, v11, v3, v4}, Lcom/android/phone/PhoneHubService;->PhoneCheckNumber(Ljava/lang/String;IZI)I

    move-result v15

    .line 411
    .local v15, result:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhoneCheckService PhoneCheckNumber result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 412
    const/4 v3, 0x2

    if-eq v15, v3, :cond_0

    const/4 v3, 0x3

    if-eq v15, v3, :cond_0

    .line 426
    .end local v11           #calltype:I
    .end local v14           #phoneNumber:Ljava/lang/String;
    .end local v15           #result:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v16

    .line 427
    .local v16, ringCi:Lcom/android/internal/telephony/Connection;
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneUtils;->isIncomingCallRestricted(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 429
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "Ignore Ring event on restricted MT call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v3, v0

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 438
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/EriAudio;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .line 445
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->ring()V

    goto/16 :goto_0

    .line 449
    .end local v16           #ringCi:Lcom/android/internal/telephony/Connection;
    :cond_d
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "RING before NEW_RING, skipping"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 455
    .end local v12           #pb:Lcom/android/internal/telephony/PhoneBase;
    .restart local p1
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 459
    .restart local p1
    :sswitch_3
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_e

    const-string v3, "DISCONNECT"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 460
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 464
    .restart local p1
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 471
    .restart local p1
    :sswitch_5
    const-string v3, "CallNotifier"

    const-string v4, "CallerInfo query took too long; manually starting ringer"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v3, v0

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    .line 479
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mCurrentRingerUri:Landroid/net/Uri;

    .line 481
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto/16 :goto_0

    .line 485
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_0

    .line 489
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto/16 :goto_0

    .line 493
    :sswitch_8
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_10

    const-string v3, "Received PHONE_CDMA_CALL_WAITING event"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 494
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 499
    .restart local p1
    :sswitch_9
    invoke-static {}, Lcom/android/phone/PhoneUtils;->unlockLibCamera()V

    goto/16 :goto_0

    .line 505
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->updateApState()V

    goto/16 :goto_0

    .line 513
    :sswitch_b
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_11

    const-string v3, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event ..."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 514
    :cond_11
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 519
    :sswitch_c
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_12

    const-string v3, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 521
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    goto/16 :goto_0

    .line 527
    :sswitch_d
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "Received PHONE_STATE_DISPLAYINFO event"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 528
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 532
    .restart local p1
    :sswitch_e
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_14

    const-string v3, "Received PHONE_STATE_SIGNALINFO event"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 533
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 537
    .restart local p1
    :sswitch_f
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_15

    const-string v3, "Received Display Info notification done event ..."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 538
    :cond_15
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 542
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->handleOtaEvents(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 546
    :sswitch_11
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_16

    const-string v3, "PHONE_ENHANCED_VP_ON..."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 547
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    move v3, v0

    if-nez v3, :cond_0

    .line 548
    const/16 v19, 0x6

    .line 549
    .local v19, toneToPlay:I
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 550
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 552
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_17

    const-string v3, "- updating notification for VP state..."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 553
    :cond_17
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 558
    .end local v19           #toneToPlay:I
    :sswitch_12
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_18

    const-string v3, "PHONE_ENHANCED_VP_OFF..."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 559
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 560
    const/16 v19, 0x6

    .line 561
    .restart local v19       #toneToPlay:I
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 562
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallNotifier;->mCdmaVoicePrivacyState:Z

    .line 564
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_19

    const-string v3, "- updating notification for VP state..."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 565
    :cond_19
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 570
    .end local v19           #toneToPlay:I
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 575
    .restart local p1
    :sswitch_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier;->mCFUFirst:Z

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    goto/16 :goto_0

    .line 581
    :sswitch_15
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 582
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1a

    const-string v3, "CallNotifier, eri PLAYBACK COMPLETE"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 586
    :cond_1a
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->EriCompleteUpdate(I)V

    goto/16 :goto_0

    .line 584
    :cond_1b
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1a

    const-string v3, "CallNotifier, eri PLAYBACK Failed"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 591
    :sswitch_16
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "CallNotifier, Ring Timer expired, stt ERI tone"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 592
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->PlayIncEriTone()V

    goto/16 :goto_0

    .line 598
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    if-eqz v3, :cond_1d

    .line 599
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/CallNotifier;->onUnknownMcc(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 601
    .restart local p1
    :cond_1d
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PHONE_UNKNOWN_MCC receive null obj from FW"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 607
    :sswitch_18
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_1e

    const-string v3, "CallNotifier()-> rcvd: EVENT_SERVICE_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 608
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/telephony/ServiceState;

    .line 609
    .local v18, state:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_1f

    .line 610
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "no SIM so no global switch"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    :cond_1f
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_22

    .line 614
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_20

    const-string v3, "CallNotifier()-> state is STATE_IN_SERVICE"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 616
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    move-object v3, v0

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 617
    :cond_21
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    goto/16 :goto_0

    .line 618
    :cond_22
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 619
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_23

    const-string v3, "CallNotifier()-> state is STATE_OUT_OF_SERVICE"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 620
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x7

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 623
    .local v17, settingsNetworkMode:I
    if-eqz v17, :cond_24

    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_24

    const/4 v3, 0x2

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_24

    const/4 v3, 0x3

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_24

    const/4 v3, 0x4

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_24

    const/4 v3, 0x5

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_24

    const/4 v3, 0x6

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 630
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    move-object v3, v0

    if-eqz v3, :cond_25

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 632
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    .line 633
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_25

    const-string v3, "restart a new mTimer"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 635
    :cond_25
    new-instance v3, Lcom/android/phone/CallNotifier$2;

    const-wide/32 v5, 0xafc8

    const-wide/16 v7, 0x2710

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;JJ)V

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier$2;->start()Landroid/os/CountDownTimer;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier;->mTimer:Landroid/os/CountDownTimer;

    goto/16 :goto_0

    .line 654
    .end local v17           #settingsNetworkMode:I
    .end local v18           #state:Landroid/telephony/ServiceState;
    .restart local p1
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/AsyncResult;

    .line 655
    .local v9, ar:Landroid/os/AsyncResult;
    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_26

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x7

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 660
    :cond_26
    sget-boolean v3, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallNotifier() exception: RESULT_SET_PREFERRED_NETWORK_TYPE"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_1
        0x6 -> :sswitch_d
        0x7 -> :sswitch_e
        0x8 -> :sswitch_8
        0x9 -> :sswitch_11
        0xa -> :sswitch_12
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_9
        0x12 -> :sswitch_a
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x1e -> :sswitch_15
        0x1f -> :sswitch_16
        0x20 -> :sswitch_17
        0x21 -> :sswitch_18
        0x22 -> :sswitch_19
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method isRetryAlertDialogNull()Z
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWaitingCall()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3801
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3802
    .local v0, inComingCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    .line 3803
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3805
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 3803
    goto :goto_0

    :cond_1
    move v1, v3

    .line 3805
    goto :goto_0
.end method

.method onCdmaCallWaitingReject()V
    .locals 15

    .prologue
    .line 3135
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 3138
    .local v14, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_5

    .line 3140
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 3142
    .local v11, c:Lcom/android/internal/telephony/Connection;
    if-eqz v11, :cond_4

    .line 3143
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 3144
    .local v5, date:J
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    .line 3145
    .local v7, duration:J
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    move v9, v1

    .line 3148
    .local v9, callLogType:I
    :goto_0
    invoke-direct {p0, v11}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 3149
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-direct {p0, v11, v4}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v3

    .line 3150
    .local v3, logNumber:Ljava/lang/String;
    invoke-direct {p0, v11, v4}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    .line 3151
    .local v2, presentation:I
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- onCdmaCallWaitingReject(): logNumber set to: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", presentation value is: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3154
    :cond_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 3157
    .local v10, number:Ljava/lang/String;
    new-instance v0, Lcom/android/phone/CallNotifier$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/CallNotifier$7;-><init>(Lcom/android/phone/CallNotifier;ILjava/lang/String;Lcom/android/internal/telephony/CallerInfo;JJILjava/lang/String;)V

    .line 3178
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3180
    const/4 v1, 0x3

    if-ne v9, v1, :cond_7

    .line 3182
    invoke-direct {p0, v11, v5, v6}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 3189
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-nez v1, :cond_1

    .line 3190
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .end local v2           #presentation:I
    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/android/phone/PhoneUtils;->mayShowQuickSmsDialog(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Ljava/lang/Boolean;)V

    .line 3194
    :cond_1
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 3195
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v1, :cond_4

    .line 3196
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v12

    .line 3197
    .local v12, previousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previsous state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3198
    :cond_2
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v12, v1, :cond_4

    .line 3199
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCdmaConferenceState()Z

    move-result v13

    .line 3200
    .local v13, previousConfState:Z
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previsous confState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3201
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1, v12}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 3202
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1, v13}, Lcom/android/phone/CdmaPhoneCallState;->setCdmaConferenceState(Z)V

    .line 3208
    .end local v0           #t:Ljava/lang/Thread;
    .end local v3           #logNumber:Ljava/lang/String;
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #date:J
    .end local v7           #duration:J
    .end local v9           #callLogType:I
    .end local v10           #number:Ljava/lang/String;
    .end local v12           #previousCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v13           #previousConfState:Z
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 3210
    .end local v11           #c:Lcom/android/internal/telephony/Connection;
    :cond_5
    return-void

    .line 3145
    .restart local v5       #date:J
    .restart local v7       #duration:J
    .restart local v11       #c:Lcom/android/internal/telephony/Connection;
    :cond_6
    const/4 v1, 0x1

    move v9, v1

    goto/16 :goto_0

    .line 3185
    .restart local v0       #t:Ljava/lang/Thread;
    .restart local v2       #presentation:I
    .restart local v3       #logNumber:Ljava/lang/String;
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v9       #callLogType:I
    .restart local v10       #number:Ljava/lang/String;
    :cond_7
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v4, 0x2

    .line 1630
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 1631
    sget-boolean v1, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallerInfo query complete, posting missed call notification"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1633
    :cond_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1706
    :cond_1
    :goto_0
    return-void

    .line 1635
    .restart local p2
    :cond_2
    instance-of v1, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_1

    .line 1636
    sget-boolean v1, Lcom/android/phone/CallNotifier;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "CallerInfo query complete(for CallNotifier), updating state for incoming call.."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1638
    :cond_3
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v7, v0

    .line 1641
    .local v7, c:Lcom/android/internal/telephony/Connection;
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 1643
    const/4 v8, 0x0

    .line 1644
    .local v8, isQueryExecutionTimeOK:Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1645
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1646
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1647
    const/4 v8, 0x1

    .line 1649
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    if-eqz v8, :cond_1

    .line 1654
    iget-boolean v1, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v1, :cond_6

    .line 1655
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1656
    :cond_5
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1649
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1661
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_7

    .line 1662
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0

    .line 1667
    :cond_7
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    if-eqz v1, :cond_8

    .line 1669
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v1, v2, :cond_b

    .line 1670
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v2, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerName:Ljava/lang/String;

    .line 1677
    :cond_8
    :goto_1
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_c

    .line 1678
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1679
    :cond_9
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1680
    .local v9, r:Lcom/android/phone/Ringer;
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v9, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1683
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 1684
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCurrentRingerUri:Landroid/net/Uri;

    .line 1703
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto/16 :goto_0

    .line 1672
    .end local v9           #r:Lcom/android/phone/Ringer;
    :cond_b
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerName:Ljava/lang/String;

    goto :goto_1

    .line 1690
    :cond_c
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "custom ringtone not found, use default ringer."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1692
    :cond_d
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1693
    .restart local v9       #r:Lcom/android/phone/Ringer;
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1697
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 1698
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCurrentRingerUri:Landroid/net/Uri;

    goto :goto_2
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 4
    .parameter "utteranceId"

    .prologue
    const-string v3, "Caller id repeat"

    const-string v2, "CallNotifier"

    .line 3708
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 3709
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v1, :cond_0

    .line 3710
    const-string v1, "Caller id then ring"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3711
    const-string v1, "CallNotifier"

    const-string v1, "end of caller id then ring!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3714
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    if-nez v1, :cond_0

    .line 3715
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->PlayIncEriTone()V

    .line 3732
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 3720
    :cond_2
    const-string v1, "Caller id repeat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3721
    const-string v1, "CallNotifier"

    const-string v1, "end of caller id repeat!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3724
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier;->isInitialIncEriPlayed:Z

    if-nez v1, :cond_0

    .line 3725
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->PlayIncEriTone()V

    goto :goto_0

    .line 3728
    :cond_3
    const-string v1, "Caller id repeat"

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->onCallerIdReadout(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendAddCallBroadcast()V
    .locals 2

    .prologue
    .line 1732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.intent.action.CALLS_ADD_ENTRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1733
    .local v0, callAddIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1734
    return-void
.end method

.method public sendAudioRouteChange()V
    .locals 1

    .prologue
    .line 3595
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendEmptyMessage(I)Z

    .line 3596
    return-void
.end method

.method sendBatteryLow()V
    .locals 2

    .prologue
    .line 2582
    const/16 v1, 0xc

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2583
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 2584
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 2533
    const/16 v1, 0xb

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2534
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2535
    return-void
.end method

.method setEndingBeforeSwitch(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1711
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mEndingBeforeSwitch:Z

    .line 1712
    return-void
.end method

.method setRetryAlertDialogNull()V
    .locals 1

    .prologue
    .line 1727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;

    .line 1728
    return-void
.end method

.method setUpdateScreen(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1716
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier;->mUpdateScreen:Z

    .line 1717
    return-void
.end method

.method silenceRinger()V
    .locals 2

    .prologue
    .line 2562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 2563
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 2565
    :cond_0
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCallerIdReadoutStatus:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 2567
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 2570
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2571
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->StopIncEriTone()V

    .line 2574
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 2575
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 1

    .prologue
    .line 3013
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 3015
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 3017
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3020
    :cond_1
    return-void
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1614
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallNotifier -> updateAfterRadioTechnologyChange"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1616
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mPhoneIsCdma:Z

    .line 1620
    :cond_1
    :goto_0
    return-void

    .line 1617
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mPhoneIsCdma:Z

    goto :goto_0

    .line 1619
    :cond_3
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "CallNotifier -> wrong phone type on RAT change"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "CallNotifier"

    .line 1527
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 1556
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1557
    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    .line 1561
    :cond_1
    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;

    .line 1571
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1572
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 1574
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1577
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    :cond_2
    :goto_0
    return-void

    .line 1579
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1580
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iput-object v4, p0, Lcom/android/phone/CallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method
