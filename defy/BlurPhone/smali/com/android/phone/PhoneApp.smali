.class public Lcom/android/phone/PhoneApp;
.super Lcom/motorola/blur/util/BlurApp;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$9;,
        Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$SettingsObserver;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field static final ACTION_CLEAR_MISSED_NOTIFICATION:Ljava/lang/String; = "com.android.phone.action.CLEAR_MISSED_NOTIFICATION"

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field private static final ACTION_ENABLE_DATA_ROAMING:Ljava/lang/String; = "com.motorola.blur.datamanager.app.ACTION_CHANGE_DATA_ROAMING"

.field public static final ACTION_TRIGGER_MANUAL_SCAN:Ljava/lang/String; = "com.android.phone.networksettingens.MANUAL_SCAN"

.field private static final AUTO_SCAN_ON_FLIP:Ljava/lang/String; = "auto_scan_on_flip"

.field private static final BATTERY_LEVEL_50:I = 0x32

.field static final CALLING_33860_ENABLED:Ljava/lang/String; = "calling_33860_enabled"

#the value of this static final field might be set in the static constructor
.field static final DBG:Z = false

.field public static final DOCKED_CAR:I = 0x2

.field public static final DOCKED_DESK:I = 0x1

.field public static final DOCKED_HD:I = 0x4

.field public static final DOCKED_MOBILE:I = 0x3

.field public static final DOCKED_NONE:I = 0x0

.field private static final EVENT_ACTION_DOCK_EVENT:I = 0x13

.field private static final EVENT_AFTER_BOOT_UP_PROCESS:I = 0x19

.field private static final EVENT_DATA_ROAMING_DISCONNECTED:I = 0xa

.field private static final EVENT_DATA_ROAMING_OK:I = 0xb

.field private static final EVENT_DISMISS_END_CALL_DIALOG:I = 0x15

.field private static final EVENT_EMERGENCY_30SEC_EXPIRED:I = 0x10

.field private static final EVENT_EMERGENCY_60SEC_EXPIRED:I = 0xf

.field private static final EVENT_GET_ICCID_DONE:I = 0x14

.field private static final EVENT_SERVICE_ROAMING_OFF:I = 0xe

.field private static final EVENT_SERVICE_ROAMING_ON:I = 0xd

.field private static final EVENT_SIM_ABSENT:I = 0x1

.field private static final EVENT_SIM_LOCKED:I = 0x2

.field private static final EVENT_SIM_NETWORK_LOCKED:I = 0x3

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x8

.field private static final EVENT_UNSOL_CDMA_INFO_RECORD:I = 0xc

.field public static final EVENT_UPDATE_CALLSCREEN:I = -0x1

.field private static final EVENT_UPDATE_INCALL_NOTIFICATION:I = 0x9

.field private static final EVENT_WIRED_HEADSET_PLUG:I = 0x7

.field public static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static FEATURE_VOICE_RECORD_ENABLED:Z = false

.field static FTR_27024_CALLFIREWALL_INCOMINGCALL:Z = false

.field static FTR_27024_CALLFIREWALL_OUTGOINGCALL:Z = false

.field static FTR_31934_AUTO_LAUNCH_DIALPAD_ON:Z = false

.field static FTR_32479_HEADSET_LONG_PRESS_ON:Z = false

.field static FTR_33076_CHINA_LOCATION:Z = false

.field static FTR_33076_IPCALL:Z = false

.field static FTR_33129_EMERGENCY_CALL_ON:Z = false

.field static FTR_35292_AUTO_SEND_OTA_DTMF_ON:Z = false

.field static FTR_36597_VZW_ROAMING_ALERT:Z = false

.field private static final INTENT_ACTION_23103_REG_FLAG:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_FID_23103_REG"

.field private static final INTENT_ACTION_CALLING_MUTE:Ljava/lang/String; = "android.mot.internal.intent.action.CALLING_MUTE"

.field private static final KEY_DATA_ROAMING_STATUS:Ljava/lang/String; = "com.motorola.blur.datamanager.app.Value"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static final MAX_GET_ICC_ID_COUNT:I = 0x14

.field private static final MIRROR_PUBLIC_STATE:Ljava/lang/String; = "com.motorola.intent.action.mirrormodestate"

.field private static final MIRROR_STATE:Ljava/lang/String; = "mirror"

.field public static final MMI_CANCEL:I = 0x35

.field public static final MMI_COMPLETE:I = 0x34

.field public static final MMI_INITIATE:I = 0x33

.field private static final MM_REJ_CAUSE_2:I = 0x2

.field private static final MM_REJ_CAUSE_255:I = 0xff

.field private static final MM_REJ_CAUSE_3:I = 0x3

.field private static final MM_REJ_CAUSE_4:I = 0x4

.field private static final MM_REJ_CAUSE_5:I = 0x5

.field private static final MM_REJ_CAUSE_6:I = 0x6

.field static final MSG_TAG:Ljava/lang/String; = "PhoneApp/AutoRegConfigMgr"

.field public static final MSG_carrier_name:Ljava/lang/String; = null

.field public static final MSG_product_name:Ljava/lang/String; = null

.field private static NO_EFFECT_DEFAULT:I = 0x0

.field static final PREFERENCES:Ljava/lang/String; = "PhoneApp"

.field static final PREF_ROAMING_ALERT_SHOWN:Ljava/lang/String; = "roaming_alert_shown"

.field private static final PROPERTY_PROXIMITY_SENSOR:Ljava/lang/String; = "persist.mot.proximity.touch"

.field private static final PROPERTY_SIM_SWAP:Ljava/lang/String; = "gsm.sim.mot.simswap"

.field private static final SCREEN_BRIGHTNESS_FULL:I = 0xff

.field private static final SCREEN_TIMEOUT_30SEC:I = 0x7530

.field private static final SCREEN_TIMEOUT_60SEC:I = 0xea60

.field static final VDBG:Z

.field public static bInDockMode:Z

.field public static bInMobileDockMode:Z

.field public static drivingModeCallFlagged:Z

.field static mGlobalCallingControlsOn:I

.field private static mIsInRoaming:Z

.field static final mIsRotator:Z

.field private static sMe:Lcom/android/phone/PhoneApp;


# instance fields
.field private autoAnswer:Lcom/android/phone/AutoAnswer;

.field private bIsTriggerbyUser:Z

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field private display_managed_roaming_dialog:Z

.field private eriaudio:Lcom/android/phone/EriAudio;

.field public ip_prefix:Ljava/lang/String;

.field private mAm:Landroid/app/ActivityManager;

.field private mAutoScanOnFlip:Z

.field private final mAutoScanReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mCachedSimPin:Ljava/lang/String;

.field private mCallForwardingChecked:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field mEmergencyCallDelayedRadioOff:Z

.field private mEmergencySettings:Z

.field private mGetIccIdCount:I

.field mHandler:Landroid/os/Handler;

.field mHdmiMode:Z

.field private final mHdmiReceiver:Landroid/content/BroadcastReceiver;

.field private final mHeadSetEventHandler:Lcom/android/phone/HeadSetEventHandler;

.field private mIgnoreTouchUserActivity:Z

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInTableTopMode:Z

.field mIsActivityLockDeviceMode:Z

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field private mIsHeadsetWithMicPlugged:Z

.field mIsInBatteryCooldown:Z

.field private mIsSimPinEnabled:Z

.field mIsSipSupported:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mManualNetworkSelectionTime:J

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPlugType:I

.field private mPokeLockToken:Landroid/os/IBinder;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPrevRejcause:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mQueryCallForwardPowerUp:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRingerMode:I

.field private mScreenOn:Z

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field public mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mSettingsObserver:Lcom/android/phone/PhoneApp$SettingsObserver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mShowIncomingCallLockedUI:Z

.field private mShowNetworkDialog:Z

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTonePlaying:Z

.field private mToneType:I

.field private mUri:Landroid/net/Uri;

.field private mUserChangedScreenBrightness:Z

.field private mUserChangedScreenTimeout:Z

.field private mUserScreenBrightness:I

.field private mUserScreenTimeOut:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field private m_phone_shutdown_indication:Z

.field notifier:Lcom/android/phone/CallNotifier;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v4, "ro.debuggable"

    const-string v3, "none"

    .line 162
    const-string v0, "ro.debuggable"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 163
    const-string v0, "ro.debuggable"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    .line 164
    const-string v0, "ro.hw.rotator"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->mIsRotator:Z

    .line 189
    sput-boolean v2, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    .line 190
    sput-boolean v2, Lcom/android/phone/PhoneApp;->bInMobileDockMode:Z

    .line 227
    sput-boolean v2, Lcom/android/phone/PhoneApp;->drivingModeCallFlagged:Z

    .line 262
    const-string v0, "ro.product.product_name"

    const-string v1, "none"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneApp;->MSG_product_name:Ljava/lang/String;

    .line 263
    const-string v0, "ro.product.carrier"

    const-string v1, "none"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneApp;->MSG_carrier_name:Ljava/lang/String;

    .line 269
    sput-boolean v2, Lcom/android/phone/PhoneApp;->mIsInRoaming:Z

    .line 272
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_36597_VZW_ROAMING_ALERT:Z

    .line 277
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    .line 311
    sput v2, Lcom/android/phone/PhoneApp;->NO_EFFECT_DEFAULT:I

    .line 406
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    .line 451
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_32479_HEADSET_LONG_PRESS_ON:Z

    .line 453
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_OUTGOINGCALL:Z

    .line 454
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    .line 458
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_33076_CHINA_LOCATION:Z

    .line 459
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_33076_IPCALL:Z

    .line 463
    sput v2, Lcom/android/phone/PhoneApp;->mGlobalCallingControlsOn:I

    .line 466
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_35292_AUTO_SEND_OTA_DTMF_ON:Z

    .line 469
    sput-boolean v2, Lcom/android/phone/PhoneApp;->FTR_31934_AUTO_LAUNCH_DIALPAD_ON:Z

    return-void

    :cond_0
    move v0, v2

    .line 162
    goto :goto_0

    :cond_1
    move v0, v2

    .line 163
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v4, "PhoneApp"

    .line 824
    invoke-direct {p0}, Lcom/motorola/blur/util/BlurApp;-><init>()V

    .line 177
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mHdmiMode:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mQueryCallForwardPowerUp:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mCallForwardingChecked:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->display_managed_roaming_dialog:Z

    .line 266
    iput-boolean v5, p0, Lcom/android/phone/PhoneApp;->mShowNetworkDialog:Z

    .line 273
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mSharedPref:Landroid/content/SharedPreferences;

    .line 321
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/PhoneApp;->mRingerMode:I

    .line 325
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsSipSupported:Z

    .line 326
    iput v3, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 327
    iput v3, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 328
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsActivityLockDeviceMode:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mEmergencyCallDelayedRadioOff:Z

    .line 331
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsInBatteryCooldown:Z

    .line 333
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->bIsTriggerbyUser:Z

    .line 338
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mTonePlaying:Z

    .line 339
    iput v1, p0, Lcom/android/phone/PhoneApp;->mToneType:I

    .line 345
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowIncomingCallLockedUI:Z

    .line 350
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 364
    iput v3, p0, Lcom/android/phone/PhoneApp;->mPrevRejcause:I

    .line 379
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 381
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 382
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 383
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 384
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 394
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mInTableTopMode:Z

    .line 395
    iput-boolean v5, p0, Lcom/android/phone/PhoneApp;->mScreenOn:Z

    .line 397
    iput v1, p0, Lcom/android/phone/PhoneApp;->mGetIccIdCount:I

    .line 402
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mEmergencySettings:Z

    .line 403
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    .line 404
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z

    .line 405
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->m_phone_shutdown_indication:Z

    .line 419
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    new-instance v0, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHdmiReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, Lcom/android/phone/AutoScanCheckReceiver;

    invoke-direct {v0}, Lcom/android/phone/AutoScanCheckReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mAutoScanReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mUri:Landroid/net/Uri;

    .line 427
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mAutoScanOnFlip:Z

    .line 430
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    new-instance v0, Lcom/android/phone/HeadSetEventHandler;

    invoke-direct {v0}, Lcom/android/phone/HeadSetEventHandler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHeadSetEventHandler:Lcom/android/phone/HeadSetEventHandler;

    .line 445
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 446
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 447
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 448
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->ip_prefix:Ljava/lang/String;

    .line 510
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 3448
    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    .line 3450
    new-instance v0, Lcom/android/phone/PhoneApp$8;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$8;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mConnection:Landroid/content/ServiceConnection;

    .line 825
    const-string v0, "PhoneApp"

    const-string v0, "-------------------------"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v0, "PhoneApp"

    const-string v0, "PhoneApp::constructor ..."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string v0, "PhoneApp"

    const-string v0, "-------------------------"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {p0}, Lcom/android/phone/PhoneApp;->setsMe(Lcom/android/phone/PhoneApp;)V

    .line 829
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$SettingsObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mSettingsObserver:Lcom/android/phone/PhoneApp$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneApp;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->restoreBacklightSettings()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneApp;)Landroid/os/IPowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->display_managed_roaming_dialog:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->display_managed_roaming_dialog:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/phone/PhoneApp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/phone/PhoneApp;->mManualNetworkSelectionTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->bIsTriggerbyUser:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPrevRejcause:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPrevRejcause:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/PhoneApp;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->isCardAbsent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowNetworkDialog:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShowNetworkDialog:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/PhoneApp;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->networkTrafficAlert(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->adjustSpeakerState()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetWithMicPlugged:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mInTableTopMode:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mInTableTopMode:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneApp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->shouldStartSimSwapAuthenticate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPlugType:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPlugType:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/phone/PhoneApp;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$3502(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->m_phone_shutdown_indication:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mEmergencySettings:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/phone/PhoneApp;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->setFeature23103RegFlag(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HeadSetEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHeadSetEventHandler:Lcom/android/phone/HeadSetEventHandler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/phone/PhoneApp;->mGetIccIdCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/phone/PhoneApp;->mGetIccIdCount:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/phone/PhoneApp;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/phone/PhoneApp;->mGetIccIdCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/PhoneApp;->mGetIccIdCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method private adjustSpeakerState()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 3007
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    if-eqz v0, :cond_1

    .line 3008
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "PhoneApp - adjustSpeakerState: mShowBluetoothIndication=true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :cond_0
    :goto_0
    return-void

    .line 3012
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "PhoneApp"

    const-string v0, "PhoneApp - adjustSpeakerState: mShowBluetoothIndication=false"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1357
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    return-object v0
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1369
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1372
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2
    .parameter "showDialpad"

    .prologue
    .line 1382
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1383
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1384
    return-object v0
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1388
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 1324
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1331
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "roaming_alert_shown"

    const-string v10, "PhoneApp"

    .line 2905
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 2907
    .local v4, ss:Landroid/telephony/ServiceState;
    const/4 v1, 0x1

    .line 2908
    .local v1, hasService:Z
    const/4 v2, 0x0

    .line 2909
    .local v2, isCdma:Z
    const-string v0, ""

    .line 2911
    .local v0, eriText:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 2912
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 2913
    .local v5, state:I
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 2914
    packed-switch v5, :pswitch_data_0

    .line 2920
    :goto_0
    :pswitch_0
    if-nez v5, :cond_0

    .line 2921
    iget-boolean v6, p0, Lcom/android/phone/PhoneApp;->mQueryCallForwardPowerUp:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/phone/PhoneApp;->mCallForwardingChecked:Z

    if-nez v6, :cond_0

    .line 2922
    iput-boolean v12, p0, Lcom/android/phone/PhoneApp;->mCallForwardingChecked:Z

    .line 2923
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2924
    sget-boolean v6, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "PhoneApp"

    const-string v6, "Start : Power on Call forwarding check"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    .end local v5           #state:I
    :cond_0
    :goto_1
    const-string v6, "roaming"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2933
    .local v3, isInRoaming:Z
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    sput-boolean v6, Lcom/android/phone/PhoneApp;->FTR_36597_VZW_ROAMING_ALERT:Z

    .line 2934
    sget-boolean v6, Lcom/android/phone/PhoneApp;->FTR_36597_VZW_ROAMING_ALERT:Z

    if-eqz v6, :cond_9

    .line 2935
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v6, :cond_1

    .line 2937
    const-string v6, "PhoneApp"

    invoke-virtual {p0, v10, v11}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/PhoneApp;->mSharedPref:Landroid/content/SharedPreferences;

    .line 2938
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v7, "roaming_alert_shown"

    invoke-interface {v6, v13, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/phone/PhoneApp;->mIsInRoaming:Z

    .line 2942
    :cond_1
    sget-boolean v6, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsInRoaming :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/phone/PhoneApp;->mIsInRoaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isInRoaming :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hasService :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    :cond_2
    sget-boolean v6, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaNeedsProvisioning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v7}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaNeedsProvisioning()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_3
    sget-boolean v6, Lcom/android/phone/PhoneApp;->mIsInRoaming:Z

    if-eq v6, v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v6}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaNeedsProvisioning()Z

    move-result v6

    if-ne v6, v12, :cond_6

    .line 2957
    :cond_4
    :goto_2
    return-void

    .line 2917
    .end local v3           #isInRoaming:Z
    .restart local v5       #state:I
    :pswitch_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2928
    .end local v5           #state:I
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2946
    .restart local v3       #isInRoaming:Z
    :cond_6
    sget-boolean v6, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Roam state changed, write "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "to mSharedPref"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_7
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "roaming_alert_shown"

    invoke-interface {v6, v13, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2953
    :cond_8
    sput-boolean v3, Lcom/android/phone/PhoneApp;->mIsInRoaming:Z

    .line 2954
    iget-object v6, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    sget-boolean v7, Lcom/android/phone/PhoneApp;->mIsInRoaming:Z

    if-eqz v7, :cond_a

    const/16 v7, 0xd

    :goto_3
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 2949
    :cond_9
    sget-boolean v6, Lcom/android/phone/PhoneApp;->mIsInRoaming:Z

    if-ne v6, v3, :cond_8

    goto :goto_2

    .line 2954
    :cond_a
    const/16 v7, 0xe

    goto :goto_3

    .line 2914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasBlurAccount()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3026
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 3027
    .local v1, accountMgr:Landroid/accounts/AccountManager;
    const-string v2, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3028
    .local v0, account:[Landroid/accounts/Account;
    array-length v2, v0

    if-ne v3, v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initForNewRadioTechnology()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v5, "PhoneApp"

    .line 2088
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    const-string v1, "initForNewRadioTechnology..."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_0
    new-instance v1, Lcom/android/phone/AutoAnswer;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/AutoAnswer;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->autoAnswer:Lcom/android/phone/AutoAnswer;

    .line 2092
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 2094
    new-instance v1, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v1}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 2095
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->cdmaPhoneCallStateInit()V

    .line 2098
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_1

    .line 2099
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 2101
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v1, :cond_2

    .line 2102
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 2104
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v1, :cond_3

    .line 2105
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 2108
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v1, :cond_4

    .line 2109
    new-instance v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v1}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 2118
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 2119
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 2120
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_5

    .line 2121
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 2123
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_6

    .line 2124
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 2127
    :cond_6
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->updateAfterRadioTechnologyChange()V

    .line 2131
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 2132
    .local v0, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_8

    .line 2133
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "PhoneApp"

    const-string v1, "Update registration for ICC status..."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2137
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/IccCard;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2138
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2140
    :cond_8
    return-void

    .line 2114
    .end local v0           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_0
.end method

.method private isCardAbsent(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2814
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2815
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInDockMode()Z
    .locals 3

    .prologue
    .line 819
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInDockMode bInDockMode is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    sget-boolean v0, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    return v0
.end method

.method private isSimSwapped(Ljava/lang/String;)Z
    .locals 5
    .parameter "newSimIccId"

    .prologue
    const-string v4, "PhoneApp"

    .line 3042
    const/4 v0, 0x0

    .line 3043
    .local v0, oldSimIccId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SimIccId"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3045
    if-eqz v0, :cond_3

    .line 3046
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 3047
    .local v1, simState:Lcom/android/internal/telephony/IccCard$State;
    if-nez p1, :cond_1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_1

    .line 3048
    :cond_0
    const-string p1, ""

    .line 3049
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    .line 3050
    const-string v2, "PhoneApp"

    const-string v2, "isSimSwapped checking since SIM absent"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_2

    .line 3053
    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimSwapped: oldSimIccId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , newSimIccId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3055
    const/4 v2, 0x1

    .line 3059
    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private networkTrafficAlert(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2819
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    const-string v2, "networkTrafficAlert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2821
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/NetworkTrafficAlert;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2822
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2823
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 2824
    return-void
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 2082
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    const-string v2, "onMMIComplete()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 2084
    .local v0, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 2085
    return-void
.end method

.method private restoreBacklightSettings()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string v7, "FTR33129: restore original user SCREEN_OFF_TIMEOUT"

    const-string v4, "-------------------------"

    const-string v5, "PhoneApp"

    .line 3261
    sget-boolean v2, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    if-ne v2, v3, :cond_c

    .line 3262
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: PhoneApp - Start of restoreBacklightSettings()..."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    :cond_0
    iget v2, p0, Lcom/android/phone/PhoneApp;->mPlugType:I

    if-eqz v2, :cond_d

    move v0, v3

    .line 3264
    .local v0, plugged:Z
    :goto_0
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "PhoneApp"

    const-string v2, "-------------------------"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTR33129: restoreBacklightSetings(), plugged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    :cond_2
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTR33129: restoreBacklightSetings(), mUserScreenTimeOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mUserScreenBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTR33129: restoreBacklightSetings(), mUserChangedScreenTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mUserChangedScreenBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_4
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "PhoneApp"

    const-string v2, "-------------------------"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    :cond_5
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_e

    .line 3271
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: restoreBacklightSetings(), CALL is still CONNECTED, state is OFFHOOK "

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    :cond_6
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    if-nez v2, :cond_8

    .line 3274
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: restore original user SCREEN_OFF_TIMEOUT"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    iget v4, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3278
    :cond_8
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z

    if-nez v2, :cond_b

    .line 3280
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 3283
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_9

    .line 3284
    iget v2, p0, Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3289
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_9
    :goto_1
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: restore original user SCREEN_BRIGHTNESS"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3302
    :cond_b
    :goto_2
    iput-boolean v6, p0, Lcom/android/phone/PhoneApp;->mEmergencySettings:Z

    .line 3303
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: PhoneApp - End of restoreBacklightSettings()..."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    .end local v0           #plugged:Z
    :cond_c
    return-void

    :cond_d
    move v0, v6

    .line 3263
    goto/16 :goto_0

    .line 3293
    .restart local v0       #plugged:Z
    :cond_e
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_b

    .line 3294
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_f

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: restoreBacklightSetings(), CALL ENDED, state is IDLE "

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    :cond_f
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    if-nez v2, :cond_b

    .line 3297
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_10

    const-string v2, "PhoneApp"

    const-string v2, "FTR33129: restore original user SCREEN_OFF_TIMEOUT"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    iget v4, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 3286
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static setFTR32479HeadsetLongPressOn(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1286
    sput-boolean p0, Lcom/android/phone/PhoneApp;->FTR_32479_HEADSET_LONG_PRESS_ON:Z

    .line 1287
    return-void
.end method

.method private static setFTR33129EmergencyCallOn(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1290
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    .line 1291
    return-void
.end method

.method private final setFeature23103RegFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2804
    if-eqz p1, :cond_0

    .line 2805
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneApp;->setFeature23103RegOnPDS(I)V

    .line 2809
    :goto_0
    return-void

    .line 2807
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneApp;->setFeature23103RegOnPDS(I)V

    goto :goto_0
.end method

.method private final setFeature23103RegOnPDS(I)V
    .locals 14
    .parameter "flag"

    .prologue
    const-string v13, "PhoneApp/AutoRegConfigMgr"

    .line 2733
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    const-string v9, "setFeature23103RegOnPDS(). Start"

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const-string v3, "b23103Reg.txt"

    .line 2736
    .local v3, filename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2737
    .local v0, directoryName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2740
    .local v6, full_file:Ljava/lang/String;
    sget-object v9, Lcom/android/phone/PhoneApp;->MSG_product_name:Ljava/lang/String;

    const-string v10, "olympus_china"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2741
    sget-object v9, Lcom/android/phone/PhoneApp;->MSG_carrier_name:Ljava/lang/String;

    const-string v10, "CU"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/phone/PhoneApp;->MSG_carrier_name:Ljava/lang/String;

    const-string v10, "Retail"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2742
    :cond_0
    const-string v0, "/pds/comm_drv/"

    .line 2743
    const-string v6, "/pds/comm_drv/b23103Reg.txt"

    .line 2750
    :cond_1
    :goto_0
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_product_name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/phone/PhoneApp;->MSG_product_name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_carrier_name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/phone/PhoneApp;->MSG_carrier_name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "directoryName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "full_file = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2758
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 2759
    .local v4, fos:Ljava/io/FileOutputStream;
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", file.getParentFile() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 2762
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2763
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2764
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    const-string v9, "Parent directory Created"

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_2
    :goto_1
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    .local v8, summaryfile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1ef

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v7

    .line 2783
    .local v7, rc:I
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileUtils.setPermissions(summaryfile.getPath(), 0757, -1, -1) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2785
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Integer.toString(flag) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 2787
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File Created : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2791
    if-eqz v5, :cond_7

    .line 2793
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 2799
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #rc:I
    .end local v8           #summaryfile:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    const-string v9, "setFeature23103RegOnPDS(). End"

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    return-void

    .line 2746
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :cond_4
    const-string v0, "/pds/autoreg/"

    .line 2747
    const-string v6, "/pds/autoreg/b23103Reg.txt"

    goto/16 :goto_0

    .line 2766
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_5
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    const-string v9, "Can\'t create the parent directory"

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2794
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #rc:I
    .restart local v8       #summaryfile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2795
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 2796
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2788
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #rc:I
    .end local v8           #summaryfile:Ljava/io/File;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 2789
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v9, "PhoneApp/AutoRegConfigMgr"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2791
    if-eqz v4, :cond_3

    .line 2793
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 2794
    :catch_2
    move-exception v1

    .line 2795
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2791
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v4, :cond_6

    .line 2793
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2796
    :cond_6
    :goto_5
    throw v9

    .line 2794
    :catch_3
    move-exception v1

    .line 2795
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2791
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #rc:I
    .restart local v8       #summaryfile:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 2788
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    move-object v1, v9

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private static setsMe(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "main"

    .prologue
    .line 832
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 833
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2326
    sget-object v0, Lcom/android/phone/PhoneApp$9;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 2344
    :goto_0
    return v0

    .line 2332
    :pswitch_0
    if-ne p0, v4, :cond_0

    if-ne p1, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 2341
    :pswitch_1
    if-ne p0, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 2326
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldStartSimSwapAuthenticate(Ljava/lang/String;)V
    .locals 4
    .parameter "iccId"

    .prologue
    .line 3064
    const-string v1, "gsm.sim.mot.simswap"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3074
    :cond_0
    :goto_0
    return-void

    .line 3067
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->isSimSwapped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->hasBlurAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3069
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3070
    .local v0, inSimSwapAuthActivity:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.motorola.blur.setup"

    const-string v3, "com.motorola.blur.setup.SimSwapAuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1480

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3072
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updatePokeLock()V
    .locals 6

    .prologue
    const-string v5, "PhoneApp"

    .line 1637
    const/4 v1, 0x1

    .line 1638
    .local v1, pokeLockSetting:I
    sget-object v2, Lcom/android/phone/PhoneApp$9;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1664
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    if-eqz v2, :cond_0

    .line 1665
    or-int/lit8 v1, v1, 0x8

    .line 1670
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-nez v2, :cond_1

    .line 1671
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 1674
    :cond_1
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v2, :cond_2

    .line 1676
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v4, "PhoneApp"

    invoke-interface {v2, v1, v3, v4}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :cond_2
    :goto_1
    return-void

    .line 1644
    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    .line 1645
    goto :goto_0

    .line 1652
    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    .line 1653
    goto :goto_0

    .line 1677
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1678
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method authenticateAgainstCachedSimPin(Ljava/lang/String;)Z
    .locals 1
    .parameter "pin"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindVaService()V
    .locals 4

    .prologue
    .line 3465
    sget-boolean v1, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    if-nez v1, :cond_0

    .line 3467
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.soundrecorder.SoundRecorderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/PhoneApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3472
    :cond_0
    :goto_0
    return-void

    .line 3468
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3469
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind sound recorder service error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method changeBacklightSettings()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v7, "screen_off_timeout"

    const-string v6, "PhoneApp"

    .line 3138
    sget-boolean v3, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    if-ne v3, v8, :cond_c

    .line 3139
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: PhoneApp - Start of changeBacklightSettings()..."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    .line 3144
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I

    .line 3147
    iget v3, p0, Lcom/android/phone/PhoneApp;->mPlugType:I

    if-eqz v3, :cond_d

    move v1, v8

    .line 3149
    .local v1, plugged:Z
    :goto_0
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "PhoneApp"

    const-string v3, "-------------------------"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    :cond_1
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTR33129: changeBacklightSetings(), mUserScreenTimeOut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mUserScreenBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    :cond_2
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTR33129: changeBacklightSetings(), mBatteryLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PhoneApp;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "plugged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    :cond_3
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "PhoneApp"

    const-string v3, "-------------------------"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    :cond_4
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_10

    .line 3155
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: changeBacklightSetings()- CALL CONNECTED, Phone.State.OFFHOOK "

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    :cond_5
    iput-boolean v5, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    .line 3157
    iput-boolean v5, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z

    .line 3160
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3162
    iget v3, p0, Lcom/android/phone/PhoneApp;->mBatteryLevel:I

    const/16 v4, 0x32

    if-ge v3, v4, :cond_6

    if-eqz v1, :cond_e

    .line 3163
    :cond_6
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_7

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: In Call - BatteryLevel greater than 50% or Charger is Plugged"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const v4, 0xea60

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3168
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 3171
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_8

    .line 3172
    const/16 v3, 0xff

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3176
    .end local v2           #power:Landroid/os/IPowerManager;
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3184
    :goto_2
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: 60sec timer STARTED"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :cond_9
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3187
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3189
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: START SettingsObserver for 60sec"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    :cond_a
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mSettings:Landroid/content/ContentQueryMap;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mSettingsObserver:Lcom/android/phone/PhoneApp$SettingsObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 3219
    .end local v0           #msg:Landroid/os/Message;
    :cond_b
    :goto_3
    iput-boolean v8, p0, Lcom/android/phone/PhoneApp;->mEmergencySettings:Z

    .line 3220
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: PhoneApp -End of changeBacklightSettings() ..."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    .end local v1           #plugged:Z
    :cond_c
    return-void

    :cond_d
    move v1, v5

    .line 3147
    goto/16 :goto_0

    .line 3179
    .restart local v1       #plugged:Z
    :cond_e
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_f

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: In Call - BatteryLevel less than 50%"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const v4, 0xea60

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 3192
    :cond_10
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_b

    .line 3193
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_11

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: changeBacklightSetings() - CALL ENDED, Phone.State.IDLE "

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_11
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3199
    iput-boolean v5, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    .line 3200
    iput-boolean v5, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z

    .line 3205
    iget v3, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    const/16 v4, 0x7530

    if-ge v3, v4, :cond_12

    iget v3, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    if-lez v3, :cond_12

    .line 3206
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3207
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_12

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: 30sec timer STARTED"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    :cond_12
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3213
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3215
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_13

    const-string v3, "PhoneApp"

    const-string v3, "FTR33129: START SettingsObserver for 30sec"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_13
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mSettings:Landroid/content/ContentQueryMap;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mSettingsObserver:Lcom/android/phone/PhoneApp$SettingsObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    goto/16 :goto_3

    .line 3174
    .end local v0           #msg:Landroid/os/Message;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method public clearInCallScreenMode()V
    .locals 2

    .prologue
    .line 2999
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "PhoneApp - clearInCallScreenMode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 3001
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 3003
    :cond_1
    return-void
.end method

.method public clearOtaState()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 2979
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "PhoneApp - clearOtaState ..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2982
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->cleanOtaScreenAndClearOtaStaticState()V

    .line 2983
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v0, "PhoneApp - clearOtaState clears OTA screen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    :cond_1
    return-void
.end method

.method clearOtaStaticState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3365
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "clearOtaStaticState()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_1

    .line 3367
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 3370
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_2

    .line 3371
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 3372
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 3373
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    .line 3374
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput v2, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    .line 3375
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->otaSpcUptime:J

    .line 3377
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-eqz v0, :cond_3

    .line 3378
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 3380
    :cond_3
    return-void
.end method

.method clearUserActivityTimeout()V
    .locals 5

    .prologue
    .line 3409
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->clearUserActivityTimeout(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3414
    :goto_0
    return-void

    .line 3411
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createManagedRoamingDialog()V
    .locals 5

    .prologue
    .line 2217
    new-instance v2, Lcom/android/phone/PhoneApp$6;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneApp$6;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 2237
    .local v2, onManagedRoamingDialogClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/phone/PhoneApp$7;

    invoke-direct {v1, p0}, Lcom/android/phone/PhoneApp$7;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 2244
    .local v1, onManagedRoamingDialogCancel:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0390

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0391

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0392

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2257
    .local v0, managed_roaming_dialog:Landroid/app/AlertDialog;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/PhoneApp;->display_managed_roaming_dialog:Z

    .line 2258
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2261
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2262
    return-void
.end method

.method disableStatusBar()V
    .locals 3

    .prologue
    const-string v1, "PhoneApp"

    .line 1561
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "disable status bar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_0
    monitor-enter p0

    .line 1563
    :try_start_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-nez v0, :cond_2

    .line 1564
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarManager.DISABLE_EXPAND, count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1567
    :cond_2
    monitor-exit p0

    .line 1568
    return-void

    .line 1567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissCallScreen()V
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_2

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1490
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1492
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 1498
    :cond_1
    :goto_0
    return-void

    .line 1495
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 2989
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "PhoneApp - dismissOtaDialogs ..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2992
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 2993
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v0, "PhoneApp - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    :cond_1
    return-void
.end method

.method displayCallScreen()V
    .locals 2

    .prologue
    .line 1395
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 1398
    return-void
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method getERIAudio()Lcom/android/phone/EriAudio;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->eriaudio:Lcom/android/phone/EriAudio;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPUKEntryProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method getToneType()I
    .locals 1

    .prologue
    .line 2168
    iget v0, p0, Lcom/android/phone/PhoneApp;->mToneType:I

    return v0
.end method

.method handleOtaEvents(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1508
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "Enter handleOtaEvents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v0, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    .line 1514
    :cond_1
    return-void
.end method

.method inTableTopMode()Z
    .locals 1

    .prologue
    .line 2886
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mInTableTopMode:Z

    return v0
.end method

.method isBluetoothAudioConnected()Z
    .locals 2

    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 813
    const/4 v1, 0x0

    .line 816
    :goto_0
    return v1

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .local v0, isAudioOn:Z
    move v1, v0

    .line 816
    goto :goto_0
.end method

.method isBtHeadsetConnected()Z
    .locals 3

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 3496
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>>>>>>>mBtHandsfree.isHeadsetConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    .line 3499
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEmergencyDialerTopMost()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "PhoneApp"

    .line 3333
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mAm:Landroid/app/ActivityManager;

    if-nez v3, :cond_0

    .line 3334
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/phone/PhoneApp;->mAm:Landroid/app/ActivityManager;

    .line 3336
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mAm:Landroid/app/ActivityManager;

    if-eqz v3, :cond_6

    .line 3337
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 3338
    .local v1, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_4

    .line 3339
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3340
    .local v2, topmostTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3341
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".EmergencyDialer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3343
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "PhoneApp"

    const-string v3, "isEmergencyDialerTopMost: true"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v7

    .line 3355
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v1           #taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2           #topmostTask:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v3

    .line 3346
    .restart local v0       #compName:Landroid/content/ComponentName;
    .restart local v1       #taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v2       #topmostTask:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "PhoneApp"

    const-string v3, "isEmergencyDialerTopMost: false"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v5

    .line 3347
    goto :goto_0

    .line 3350
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v2           #topmostTask:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "PhoneApp"

    const-string v3, "isEmergencyDialerTopMost: taskList is null"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v3, v5

    .line 3351
    goto :goto_0

    .line 3354
    .end local v1           #taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_6
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_7

    const-string v3, "PhoneApp"

    const-string v3, "isEmergencyDialerTopMost: mAm is null"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v3, v5

    .line 3355
    goto :goto_0
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 2149
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method isHeadsetWithMicPlugged()Z
    .locals 1

    .prologue
    .line 2152
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetWithMicPlugged:Z

    return v0
.end method

.method isKeyGuardSecurityLocked()Z
    .locals 1

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->isSecurityLocked()Z

    move-result v0

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 4

    .prologue
    .line 2960
    const/4 v0, 0x0

    .line 2961
    .local v0, otaCallActive:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 2962
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 2964
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInActiveState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_1
    return v0
.end method

.method public isOtaCallInEndState()Z
    .locals 4

    .prologue
    .line 2969
    const/4 v0, 0x0

    .line 2970
    .local v0, otaCallEnded:Z
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 2971
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    .line 2973
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- isOtaCallInEndState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_1
    return v0
.end method

.method isPhoneShuttingDown()Z
    .locals 1

    .prologue
    .line 3081
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->m_phone_shutdown_indication:Z

    return v0
.end method

.method isRingerModeSilent()Z
    .locals 4

    .prologue
    .line 2156
    iget v1, p0, Lcom/android/phone/PhoneApp;->mRingerMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 2157
    .local v0, res:Z
    :goto_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRingerModeSilent()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :cond_0
    return v0

    .line 2156
    .end local v0           #res:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 2892
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mScreenOn:Z

    return v0
.end method

.method isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1464
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method isTonePlaying()Z
    .locals 3

    .prologue
    .line 2163
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTonePlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mTonePlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTonePlaying:Z

    return v0
.end method

.method public isVoiceRecordOn()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3482
    sget-boolean v1, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    if-eqz v1, :cond_1

    .line 3484
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    invoke-interface {v1}, Lcom/motorola/soundrecorder/ISoundRecorderService;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3489
    :goto_0
    return v1

    :cond_0
    move v1, v4

    .line 3484
    goto :goto_0

    .line 3485
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3486
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to call SoundRecorderService.getState() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    move v1, v4

    .line 3489
    goto :goto_0
.end method

.method public isWakeLockUpdateOnWaiting()Z
    .locals 6

    .prologue
    const-string v5, "PhoneApp"

    .line 3385
    const/4 v1, 0x0

    .line 3386
    .local v1, result:Z
    const/4 v0, 0x0

    .line 3387
    .local v0, isWaiting:Z
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3388
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 3390
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3391
    const-string v3, "PhoneApp"

    const-string v3, "updateWakeState: proximity sensor is on when call waiting ringing."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3

    .line 3393
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->proximityTargetDetected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3394
    const-string v4, "PhoneApp"

    const-string v5, "updateWakeState: proximity sensor is hold & target detected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    sget-object v4, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 3400
    :goto_1
    monitor-exit v3

    .line 3401
    const/4 v1, 0x1

    .line 3403
    :cond_1
    return v1

    .line 3388
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3397
    :cond_3
    const-string v4, "PhoneApp"

    const-string v5, "updateWakeState: proximity sensor is not hold or target is not detected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    sget-object v4, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto :goto_1

    .line 3400
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 1295
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_1

    .line 1296
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 1301
    :goto_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->mIsRotator:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isBluetoothAudioConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1311
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1316
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1317
    invoke-super {p0, p1}, Lcom/motorola/blur/util/BlurApp;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1318
    return-void

    .line 1298
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 33

    .prologue
    .line 837
    const-string v7, "PhoneApp"

    const-string v8, "-------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v7, "PhoneApp"

    const-string v8, "onCreate()..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v7, "PhoneApp"

    const-string v8, "-------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-super/range {p0 .. p0}, Lcom/motorola/blur/util/BlurApp;->onCreate()V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 847
    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v7, "com.android.phone.PhoneAp.mIsInBatteryCooldown"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v7, v0

    if-nez v7, :cond_13

    .line 852
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 855
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 857
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 864
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "PhoneApp"

    const-string v8, "FTR33129: onCreate(), feature is turned ON"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/phone/PhoneApp;->setFTR33129EmergencyCallOn(Z)V

    .line 868
    :cond_1
    sget-boolean v7, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 870
    sget-object v6, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "(name=?) or (name=?)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "screen_off_timeout"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "screen_brightness"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 873
    .local v29, settingsCursor:Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentQueryMap;

    const-string v8, "name"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v10, v0

    move-object v0, v7

    move-object/from16 v1, v29

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mSettings:Landroid/content/ContentQueryMap;

    .line 874
    if-eqz v29, :cond_2

    .line 875
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 877
    :cond_2
    new-instance v7, Lcom/android/phone/PhoneApp$SettingsObserver;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneApp$SettingsObserver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mSettingsObserver:Lcom/android/phone/PhoneApp$SettingsObserver;

    .line 878
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "PhoneApp"

    const-string v8, "FTR33129: onCreate(), create mSettingsObserver"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v29           #settingsCursor:Landroid/database/Cursor;
    :cond_3
    const-string v7, "calling_global_controls_enable"

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/phone/PhoneApp;->mGlobalCallingControlsOn:I

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 889
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "PhoneApp"

    const-string v8, "FTR32479: onCreate(), feature is turned ON"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_4
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/phone/PhoneApp;->setFTR32479HeadsetLongPressOn(Z)V

    .line 894
    :cond_5
    const-string v7, "sip_address_enabled"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    const/4 v7, 0x1

    :goto_0
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mIsSipSupported:Z

    .line 897
    invoke-static/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->init(Landroid/content/Context;)V

    .line 899
    new-instance v7, Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v8, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 906
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mIsSipSupported:Z

    move v7, v0

    if-eqz v7, :cond_6

    .line 907
    invoke-static/range {p0 .. p0}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    .line 909
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v27

    .line 911
    .local v27, phoneType:I
    const/4 v7, 0x2

    move/from16 v0, v27

    move v1, v7

    if-ne v0, v1, :cond_7

    .line 913
    new-instance v7, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v7}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->cdmaPhoneCallStateInit()V

    .line 917
    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 919
    new-instance v7, Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v8, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 920
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/phone/BluetoothHeadsetService;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 926
    :goto_1
    new-instance v7, Lcom/android/phone/Ringer;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    .line 932
    .local v12, audioManager:Landroid/media/AudioManager;
    if-eqz v12, :cond_8

    .line 933
    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/PhoneApp;->mRingerMode:I

    .line 934
    :cond_8
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_9

    const-string v7, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial ringermode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/PhoneApp;->mRingerMode:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_9
    const-string v7, "power"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    move-object v7, v0

    const v8, 0x1000001a

    const-string v9, "PhoneApp"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    move-object v7, v0

    const v8, 0x20000001

    const-string v9, "PhoneApp"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_a

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mPowerManager:Landroid/os/PowerManager;

    move-object v7, v0

    const/16 v8, 0x20

    const-string v9, "PhoneApp"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 953
    :cond_a
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_b

    const-string v7, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mProximityWakeLock: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_b
    const-string v7, "keyguard"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object v7, v0

    const-string v8, "PhoneApp"

    invoke-virtual {v7, v8}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 957
    monitor-enter p0

    .line 958
    :try_start_0
    const-string v7, "statusbar"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 959
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/AssistedDialingUtil;->checkAdFtrFlag(Landroid/content/res/Resources;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "calling_33860_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setConvertNumberFlex(I)V

    .line 974
    new-instance v7, Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    move-object v10, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object v7, v0

    if-eqz v7, :cond_c

    .line 976
    new-instance v7, Lcom/android/phone/EriAudio;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object v9, v0

    const/16 v10, 0x1e

    invoke-direct {v7, v8, v9, v10}, Lcom/android/phone/EriAudio;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->eriaudio:Lcom/android/phone/EriAudio;

    .line 980
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v32

    .line 981
    .local v32, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v32, :cond_d

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v32

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, v32

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object/from16 v0, v32

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 989
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object v8, v0

    const/16 v9, 0x34

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 995
    new-instance v21, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 997
    .local v21, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    const-string v7, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 999
    const-string v7, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    const-string v7, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    const-string v7, "android.intent.action.BATTERY_LOW"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1002
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    const-string v7, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    const-string v7, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    const-string v7, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1008
    const-string v7, "com.motorola.intent.action.GET_REJECT_CODE"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1009
    const-string v7, "com.motorola.intent.action.DISPLAY_ROAMING_DIALOG"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1012
    const-string v7, "com.motorola.hardware.TABLETOP_MODE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1013
    const-string v7, "com.android.phone.ACTION_LAUNCH_SIM_UNLOCK_UI"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    const-string v7, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    const-string v7, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    const-string v7, "networkalertdialog"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 1019
    .local v28, prefs:Landroid/content/SharedPreferences;
    const-string v7, "needshow"

    const/4 v8, 0x1

    move-object/from16 v0, v28

    move-object v1, v7

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1020
    const-string v7, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1022
    :cond_e
    const-string v7, "com.android.phone.action.CLEAR_MISSED_NOTIFICATION"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1024
    sget-boolean v7, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 1025
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1026
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1030
    :cond_f
    sget v7, Lcom/android/phone/PhoneApp;->mGlobalCallingControlsOn:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 1031
    const-string v7, "android.intent.action.GLOBAL_END_CALL"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1035
    :cond_10
    const-string v7, "com.motorola.internal.intent.action.MOT_DOCK_EVENT"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1039
    new-instance v15, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v15, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v15, docIntent:Landroid/content/IntentFilter;
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1047
    new-instance v20, Landroid/content/IntentFilter;

    const-string v7, "com.motorola.internal.intent.action.ACTIVITY_LOCK_DEVICE_MODE"

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v20, ifActionDeviceLock:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    const-string v8, "android.permission.DEVICE_POWER"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v20

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.motorola.blur.datamanager.app.ACTION_CHANGE_DATA_ROAMING"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v9, "android.permission.WRITE_SETTINGS"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_TEMP_COOLDOWN_MODE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v9, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1060
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    .line 1061
    .local v23, intentFilterMute:Landroid/content/IntentFilter;
    const-string v7, "android.mot.internal.intent.action.CALLING_MUTE"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    const-string v8, "android.permission.MODIFY_AUDIO_SETTINGS"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v23

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1067
    new-instance v22, Landroid/content/IntentFilter;

    const-string v7, "com.android.mms.transaction.MESSAGE_FID_23103_REG"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v22, intentFilterFlag23130:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1072
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1073
    .local v6, cr:Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 1076
    .local v14, c:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mUri:Landroid/net/Uri;

    move-object v7, v0

    const/4 v8, 0x0

    const-string v9, "name=\'auto_scan_on_flip\'"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1077
    :goto_2
    if-eqz v14, :cond_28

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1079
    const-string v7, "value"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x1

    :goto_3
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mAutoScanOnFlip:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1082
    :catch_0
    move-exception v7

    .line 1087
    if-eqz v14, :cond_11

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1092
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mAutoScanOnFlip:Z

    move v7, v0

    if-eqz v7, :cond_2a

    .line 1094
    new-instance v13, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-direct {v13, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v13, autoscanIntentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v13, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v13, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mAutoScanReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1110
    .end local v13           #autoscanIntentFilter:Landroid/content/IntentFilter;
    :cond_12
    :goto_5
    new-instance v25, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.MEDIA_BUTTON"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v25, mediaButtonIntentFilter:Landroid/content/IntentFilter;
    sget-boolean v7, Lcom/android/phone/PhoneApp;->FTR_32479_HEADSET_LONG_PRESS_ON:Z

    if-eqz v7, :cond_2b

    .line 1119
    const/16 v7, 0x3e9

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1124
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1127
    new-instance v19, Landroid/content/IntentFilter;

    const-string v7, "com.motorola.intent.action.mirrormodestate"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v19, hdmiFilter:Landroid/content/IntentFilter;
    const-string v7, "PhoneApp"

    const-string v8, "registerReceiver"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHdmiReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1133
    const v7, 0x7f05000f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1135
    const v7, 0x7f050001

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1143
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v12           #audioManager:Landroid/media/AudioManager;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v15           #docIntent:Landroid/content/IntentFilter;
    .end local v19           #hdmiFilter:Landroid/content/IntentFilter;
    .end local v20           #ifActionDeviceLock:Landroid/content/IntentFilter;
    .end local v21           #intentFilter:Landroid/content/IntentFilter;
    .end local v22           #intentFilterFlag23130:Landroid/content/IntentFilter;
    .end local v23           #intentFilterMute:Landroid/content/IntentFilter;
    .end local v25           #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    .end local v27           #phoneType:I
    .end local v28           #prefs:Landroid/content/SharedPreferences;
    .end local v32           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2c

    const/4 v7, 0x1

    move/from16 v26, v7

    .line 1145
    .local v26, phoneIsCdma:Z
    :goto_7
    if-eqz v26, :cond_14

    .line 1146
    new-instance v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v7}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1147
    new-instance v7, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v7}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1148
    new-instance v7, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v7}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1149
    new-instance v7, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v7}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1152
    :cond_14
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "assisted_dialing_state"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    .line 1155
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->notifyAssistedDialingOngoing()V

    .line 1160
    :cond_15
    const-string v7, "content://icc/adn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 1163
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_tty_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 1178
    .local v30, settingsTtyMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v7, v0

    const/4 v8, 0x0

    move-object v0, v7

    move/from16 v1, v30

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1182
    const-string v7, "audio"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/media/AudioManager;

    .line 1183
    .local v24, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hearing_aid"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1184
    .local v18, hac:I
    const-string v7, "HACSetting"

    if-eqz v18, :cond_2d

    const-string v8, "ON"

    :goto_8
    move-object/from16 v0, v24

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_16

    const-string v7, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate() -> Sent HAC setting to AudioMge. HAC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1191
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_17

    const-string v7, "PhoneApp"

    const-string v8, "FTR32479: onCreate(), feature is turned ON"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_17
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/phone/PhoneApp;->setFTR32479HeadsetLongPressOn(Z)V

    .line 1197
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1198
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_19

    const-string v7, "PhoneApp"

    const-string v8, "FTR27024: onCreate(), feature is turned ON, check outgoing call"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_19
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_OUTGOINGCALL:Z

    .line 1202
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1203
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_1b

    const-string v7, "PhoneApp"

    const-string v8, "FTR27024: onCreate(), feature is turned ON, check incoming call"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_1b
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    .line 1209
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1210
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_1d

    const-string v7, "PhoneApp"

    const-string v8, "FTR33076: onCreate(), feature is turned ON, IP CALL"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_1d
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FTR_33076_IPCALL:Z

    .line 1214
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1215
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_1f

    const-string v7, "PhoneApp"

    const-string v8, "FTR33076: onCreate(), feature is turned ON, china location"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_1f
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FTR_33076_CHINA_LOCATION:Z

    .line 1223
    :cond_20
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1224
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FTR_31934_AUTO_LAUNCH_DIALPAD_ON:Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1231
    :cond_21
    :goto_9
    new-instance v7, Lcom/android/phone/AutoAnswer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/android/phone/AutoAnswer;-><init>(Lcom/android/internal/telephony/Phone;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->autoAnswer:Lcom/android/phone/AutoAnswer;

    .line 1233
    const-string v7, "activity"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #resolver:Landroid/content/ContentResolver;
    check-cast v5, Landroid/app/ActivityManager;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mAm:Landroid/app/ActivityManager;

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_22

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mQueryCallForwardPowerUp:Z

    .line 1238
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_22

    const-string v7, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQueryCallForwardPowerUp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/PhoneApp;->mQueryCallForwardPowerUp:Z

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_22
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1249
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FTR_35292_AUTO_SEND_OTA_DTMF_ON:Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1256
    :cond_23
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    .line 1257
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->bindVaService()V

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1262
    .local v31, sharedPref:Landroid/content/SharedPreferences;
    const/16 v17, 0x0

    .line 1263
    .local v17, flu_string:Ljava/lang/String;
    if-eqz v31, :cond_24

    .line 1264
    const-string v7, "button_vq_flu_key"

    const-string v8, "1"

    move-object/from16 v0, v31

    move-object v1, v7

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1266
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->setFluence(Landroid/content/Context;I)V

    .line 1268
    return-void

    .line 894
    .end local v17           #flu_string:Ljava/lang/String;
    .end local v18           #hac:I
    .end local v24           #mAudioManager:Landroid/media/AudioManager;
    .end local v26           #phoneIsCdma:Z
    .end local v30           #settingsTtyMode:I
    .end local v31           #sharedPref:Landroid/content/SharedPreferences;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_25
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 923
    .restart local v27       #phoneType:I
    :cond_26
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_1

    .line 959
    .restart local v12       #audioManager:Landroid/media/AudioManager;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 1079
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v15       #docIntent:Landroid/content/IntentFilter;
    .restart local v20       #ifActionDeviceLock:Landroid/content/IntentFilter;
    .restart local v21       #intentFilter:Landroid/content/IntentFilter;
    .restart local v22       #intentFilterFlag23130:Landroid/content/IntentFilter;
    .restart local v23       #intentFilterMute:Landroid/content/IntentFilter;
    .restart local v28       #prefs:Landroid/content/SharedPreferences;
    .restart local v32       #sim:Lcom/android/internal/telephony/IccCard;
    :cond_27
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1087
    :cond_28
    if-eqz v14, :cond_11

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_1
    move-exception v7

    if-eqz v14, :cond_29

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_29
    throw v7

    .line 1102
    :cond_2a
    sget-boolean v7, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v7, :cond_12

    const-string v7, "PhoneApp"

    const-string v8, "AUTOSCANRECIEVER: autoscan property not set."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1121
    .restart local v25       #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    :cond_2b
    const/4 v7, 0x1

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    goto/16 :goto_6

    .line 1143
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v12           #audioManager:Landroid/media/AudioManager;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v15           #docIntent:Landroid/content/IntentFilter;
    .end local v20           #ifActionDeviceLock:Landroid/content/IntentFilter;
    .end local v21           #intentFilter:Landroid/content/IntentFilter;
    .end local v22           #intentFilterFlag23130:Landroid/content/IntentFilter;
    .end local v23           #intentFilterMute:Landroid/content/IntentFilter;
    .end local v25           #mediaButtonIntentFilter:Landroid/content/IntentFilter;
    .end local v27           #phoneType:I
    .end local v28           #prefs:Landroid/content/SharedPreferences;
    .end local v32           #sim:Lcom/android/internal/telephony/IccCard;
    :cond_2c
    const/4 v7, 0x0

    move/from16 v26, v7

    goto/16 :goto_7

    .line 1184
    .restart local v18       #hac:I
    .restart local v24       #mAudioManager:Landroid/media/AudioManager;
    .restart local v26       #phoneIsCdma:Z
    .restart local v30       #settingsTtyMode:I
    :cond_2d
    const-string v8, "OFF"

    goto/16 :goto_8

    .line 1226
    :catch_1
    move-exception v7

    move-object/from16 v16, v7

    .line 1227
    .local v16, ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FTR_31934_AUTO_LAUNCH_DIALPAD_ON:Z

    goto/16 :goto_9

    .line 1251
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v16           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v7

    move-object/from16 v16, v7

    .line 1252
    .restart local v16       #ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/phone/PhoneApp;->FTR_35292_AUTO_SEND_OTA_DTMF_ON:Z

    goto/16 :goto_a
.end method

.method playRejCauseTone()V
    .locals 5

    .prologue
    .line 2209
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 2210
    .local v1, toneGenerator:Landroid/media/ToneGenerator;
    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2214
    .end local v1           #toneGenerator:Landroid/media/ToneGenerator;
    :goto_0
    return-void

    .line 2211
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2212
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playTone(): Exception caught while creating ToneGenerator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method pokeUserActivity()V
    .locals 6

    .prologue
    const-string v5, "PhoneApp"

    .line 1946
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    const-string v1, "pokeUserActivity()..."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-nez v1, :cond_1

    .line 1949
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 1952
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v1, :cond_2

    .line 1954
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    :cond_2
    :goto_0
    return-void

    .line 1955
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1956
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method preventScreenOn(Z)V
    .locals 3
    .parameter "prevent"

    .prologue
    .line 1895
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- preventScreenOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-nez v0, :cond_1

    .line 1898
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v0, :cond_2

    .line 1904
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    monitor-enter v0

    .line 1905
    :try_start_0
    new-instance v1, Lcom/android/phone/PhoneApp$4;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/PhoneApp$4;-><init>(Lcom/android/phone/PhoneApp;Z)V

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$4;->start()V

    .line 1914
    monitor-exit v0

    .line 1917
    :cond_2
    return-void

    .line 1914
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method proximitySensorModeEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2074
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-string v0, "persist.mot.proximity.touch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reenableStatusBar()V
    .locals 3

    .prologue
    const-string v1, "PhoneApp"

    .line 1577
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "re-enable status bar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    monitor-enter p0

    .line 1579
    :try_start_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-lez v0, :cond_3

    .line 1580
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-nez v0, :cond_2

    .line 1581
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarManager.DISABLE_NONE, count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1587
    :cond_2
    :goto_0
    monitor-exit p0

    .line 1588
    return-void

    .line 1585
    :cond_3
    const-string v0, "PhoneApp"

    const-string v1, "mStatusBarDisableCount is already zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1587
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .locals 6
    .parameter "ws"

    .prologue
    const-string v2, "PhoneApp"

    .line 1693
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestWakeState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    monitor-enter v0

    .line 1695
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v1, p1, :cond_3

    .line 1696
    sget-object v1, Lcom/android/phone/PhoneApp$9;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1756
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1757
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1759
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1760
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1764
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1766
    :cond_3
    monitor-exit v0

    .line 1767
    return-void

    .line 1702
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    :try_start_1
    new-instance v2, Lcom/android/phone/PhoneApp$2;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneApp$2;-><init>(Lcom/android/phone/PhoneApp;)V

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp$2;->start()V

    .line 1708
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1710
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1711
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1766
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1708
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    .line 1719
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1720
    :try_start_5
    new-instance v2, Lcom/android/phone/PhoneApp$3;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneApp$3;-><init>(Lcom/android/phone/PhoneApp;)V

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp$3;->start()V

    .line 1725
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1731
    :try_start_6
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_6

    .line 1732
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_4

    const-string v1, "PhoneApp"

    const-string v2, "wakeup for incoming call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-nez v1, :cond_5

    .line 1735
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 1738
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_6

    .line 1740
    :try_start_7
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1749
    :cond_6
    :goto_1
    :try_start_8
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1750
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1725
    :catchall_2
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1741
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method restoreUserBacklightSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const-string v4, "PhoneApp"

    .line 3227
    sget-boolean v1, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mEmergencySettings:Z

    if-ne v1, v2, :cond_6

    .line 3228
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    const-string v1, "FTR33129: restoreUserBacklightSettings() call ended abruptly during first 60/30 sec"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mSettings:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mSettingsObserver:Lcom/android/phone/PhoneApp$SettingsObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 3233
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3235
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3237
    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenTimeout:Z

    if-nez v1, :cond_2

    .line 3238
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PhoneApp"

    const-string v1, "FTR33129: restoreUserBacklightSettings(), restore original user SCREEN_OFF_TIMEOUT"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    iget v3, p0, Lcom/android/phone/PhoneApp;->mUserScreenTimeOut:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3242
    :cond_2
    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mUserChangedScreenBrightness:Z

    if-nez v1, :cond_5

    .line 3243
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    const-string v1, "FTR33129: restoreUserBacklightSettings(), restore original user SCREEN_BRIGHTNESS"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    :cond_3
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 3248
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_4

    .line 3249
    iget v1, p0, Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3253
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/phone/PhoneApp;->mUserScreenBrightness:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3255
    :cond_5
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "PhoneApp"

    const-string v1, "FTR33129: END of restoreUserBacklightSettings() for abrupt end of  60sec/30sec "

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :cond_6
    return-void

    .line 3251
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method setBeginningCall(Z)V
    .locals 1
    .parameter "beginning"

    .prologue
    .line 1969
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1971
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1972
    return-void
.end method

.method setCachedSimPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mCachedSimPin:Ljava/lang/String;

    .line 1411
    return-void
.end method

.method public setEndingBeforeSwitch(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->setEndingBeforeSwitch(Z)V

    .line 498
    return-void
.end method

.method setIgnoreTouchUserActivity(Z)V
    .locals 3
    .parameter "ignore"

    .prologue
    .line 1933
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIgnoreTouchUserActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_0
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 1935
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    .line 1936
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 1415
    return-void
.end method

.method public setManualNetworkSelectionTime()V
    .locals 2

    .prologue
    .line 1336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/PhoneApp;->mManualNetworkSelectionTime:J

    .line 1337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->bIsTriggerbyUser:Z

    .line 1338
    return-void
.end method

.method public setNetworkPreferences(I)V
    .locals 4
    .parameter "phoneType"

    .prologue
    .line 1271
    new-instance v0, Lcom/android/phone/AutoAnswer;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/AutoAnswer;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->autoAnswer:Lcom/android/phone/AutoAnswer;

    .line 1272
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1273
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1274
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->cdmaPhoneCallStateInit()V

    .line 1275
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1276
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1277
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1278
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 1531
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 1548
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 483
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 1605
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-ne p1, v0, :cond_2

    .line 1619
    :cond_1
    :goto_0
    return-void

    .line 1614
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1617
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 1618
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_0
.end method

.method setShowIncomingCallLockedUI(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 2185
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShowIncomingCallLockedUI:Z

    .line 2186
    return-void
.end method

.method setTonePlayingFlag(ZI)V
    .locals 3
    .parameter "flag"
    .parameter "toneType"

    .prologue
    .line 2172
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTonePlayingFlag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_0
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mTonePlaying:Z

    .line 2174
    if-eqz p1, :cond_1

    move v0, p2

    :goto_0
    iput v0, p0, Lcom/android/phone/PhoneApp;->mToneType:I

    .line 2175
    return-void

    .line 2174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUpdateScreen(ZZ)V
    .locals 1
    .parameter "flag"
    .parameter "cardUpdate"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->setUpdateScreen(ZZ)V

    .line 507
    :cond_0
    return-void
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 2278
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method showEndCallToast(JLjava/lang/String;)V
    .locals 12
    .parameter "callDuration"
    .parameter "errorMsg"

    .prologue
    const-wide/16 v9, 0x3e8

    const v8, 0x7f0b0304

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v11, "\n"

    .line 1426
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v6

    .line 1431
    .local v1, isDisconnectCauseOn:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1433
    const v3, 0x7f0b013e

    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, endTxt:Ljava/lang/String;
    const-string v3, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1435
    new-array v3, v6, [Ljava/lang/Object;

    div-long v4, p1, v9

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v8, v3}, Lcom/android/phone/PhoneApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1437
    const-string v3, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1446
    .end local v0           #endTxt:Ljava/lang/String;
    .local v2, toast:Landroid/widget/Toast;
    :goto_1
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 1447
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1448
    return-void

    .end local v1           #isDisconnectCauseOn:Z
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_0
    move v1, v7

    .line 1426
    goto :goto_0

    .line 1443
    .restart local v1       #isDisconnectCauseOn:Z
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    div-long v5, p1, v9

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v8, v4}, Lcom/android/phone/PhoneApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .restart local v2       #toast:Landroid/widget/Toast;
    goto :goto_1
.end method

.method showIncomingCallLockedUI()Z
    .locals 1

    .prologue
    .line 2180
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowIncomingCallLockedUI:Z

    return v0
.end method

.method syncInCallScreen()V
    .locals 1

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 3324
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateInCallScreen()V

    .line 3326
    :cond_0
    return-void
.end method

.method public unbindVaService()V
    .locals 1

    .prologue
    .line 3475
    sget-boolean v0, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    if-eqz v0, :cond_0

    .line 3476
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    .line 3479
    :cond_0
    return-void
.end method

.method updateBluetoothIndication(Z)V
    .locals 3
    .parameter "forceUiUpdate"

    .prologue
    .line 2292
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 2295
    if-eqz p1, :cond_2

    .line 2298
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 2299
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2302
    :cond_2
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 2053
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_0

    .line 2054
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 2055
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2057
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 2063
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 2067
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 2064
    goto :goto_0
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const-string v3, "PhoneApp"

    .line 2003
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProximitySensorMode: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2010
    .local v0, isLidOn:I
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2011
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2012
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->isWaitingCall()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v2, :cond_8

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_2
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/phone/PhoneApp;->mIsRotator:Z

    if-nez v2, :cond_3

    sget v2, Lcom/android/phone/PhoneApp;->NO_EFFECT_DEFAULT:I

    if-ne v0, v2, :cond_8

    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneApp;->bInMobileDockMode:Z

    if-nez v2, :cond_8

    .line 2021
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2022
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "PhoneApp"

    const-string v3, "updateProximitySensorMode: acquiring..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_4
    new-instance v2, Lcom/android/phone/PhoneApp$5;

    invoke-direct {v2, p0}, Lcom/android/phone/PhoneApp$5;-><init>(Lcom/android/phone/PhoneApp;)V

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp$5;->start()V

    .line 2044
    :cond_5
    :goto_0
    monitor-exit v1

    .line 2046
    :cond_6
    return-void

    .line 2032
    :cond_7
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_5

    const-string v2, "PhoneApp"

    const-string v3, "updateProximitySensorMode: lock already held."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2044
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2037
    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2038
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "PhoneApp"

    const-string v3, "updateProximitySensorMode: releasing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_9
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 2041
    :cond_a
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_5

    const-string v2, "PhoneApp"

    const-string v3, "updateProximitySensorMode: lock already released."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method updateWakeState()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "PhoneApp"

    .line 1803
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    .line 1808
    .local v7, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v3

    .line 1813
    .local v3, isShowingCallScreen:Z
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v8

    if-eqz v8, :cond_5

    move v0, v11

    .line 1823
    .local v0, isDialerOpened:Z
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_6

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v4, v11

    .line 1831
    .local v4, isSpeakerInUse:Z
    :goto_1
    sget-boolean v8, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v8, :cond_0

    const-string v8, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWakeState: callscreen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dialer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", speaker "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_7

    .line 1843
    :cond_1
    sget-object v8, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1875
    :goto_2
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_9

    move v2, v11

    .line 1876
    .local v2, isRinging:Z
    :goto_3
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_a

    move v1, v11

    .line 1877
    .local v1, isDialing:Z
    :goto_4
    iget-object v8, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v3, :cond_b

    move v6, v11

    .line 1879
    .local v6, showingDisconnectedConnection:Z
    :goto_5
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-eqz v6, :cond_c

    :cond_2
    move v5, v11

    .line 1880
    .local v5, keepScreenOn:Z
    :goto_6
    sget-boolean v8, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v8, :cond_3

    const-string v8, "PhoneApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWakeState: keepScreenOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (isRinging "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isDialing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", showingDisc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isWakeLockUpdateOnWaiting()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v5, :cond_d

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_7
    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1886
    :cond_4
    return-void

    .end local v0           #isDialerOpened:Z
    .end local v1           #isDialing:Z
    .end local v2           #isRinging:Z
    .end local v4           #isSpeakerInUse:Z
    .end local v5           #keepScreenOn:Z
    .end local v6           #showingDisconnectedConnection:Z
    :cond_5
    move v0, v10

    .line 1813
    goto/16 :goto_0

    .restart local v0       #isDialerOpened:Z
    :cond_6
    move v4, v10

    .line 1823
    goto/16 :goto_1

    .line 1846
    .restart local v4       #isSpeakerInUse:Z
    :cond_7
    if-eqz v0, :cond_8

    .line 1855
    sget-object v8, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_2

    .line 1864
    :cond_8
    sget-object v8, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v8}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_2

    :cond_9
    move v2, v10

    .line 1875
    goto/16 :goto_3

    .restart local v2       #isRinging:Z
    :cond_a
    move v1, v10

    .line 1876
    goto :goto_4

    .restart local v1       #isDialing:Z
    :cond_b
    move v6, v10

    .line 1877
    goto :goto_5

    .restart local v6       #showingDisconnectedConnection:Z
    :cond_c
    move v5, v10

    .line 1879
    goto :goto_6

    .line 1885
    .restart local v5       #keepScreenOn:Z
    :cond_d
    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_7
.end method

.method viewRejCauseMessage(I)V
    .locals 3
    .parameter "data"

    .prologue
    .line 2194
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2196
    new-instance v0, Lcom/android/phone/TimerToast;

    const v1, 0x1d4c0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/TimerToast;-><init>(Landroid/content/Context;I)V

    .line 2197
    .local v0, t:Lcom/android/phone/TimerToast;
    invoke-virtual {v0, p1}, Lcom/android/phone/TimerToast;->setTitle(I)V

    .line 2198
    invoke-virtual {v0}, Lcom/android/phone/TimerToast;->show()V

    .line 2204
    .end local v0           #t:Lcom/android/phone/TimerToast;
    :goto_0
    return-void

    .line 2200
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2201
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method wakeUpScreen()V
    .locals 5

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_2

    .line 1775
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-nez v0, :cond_1

    .line 1778
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 1781
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v0, :cond_2

    .line 1783
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    :cond_2
    :goto_0
    return-void

    .line 1784
    :catch_0
    move-exception v0

    goto :goto_0
.end method
