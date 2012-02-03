.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$3;,
        Lcom/android/phone/PhoneApp$LockPatternClear;,
        Lcom/android/phone/PhoneApp$AutoAnswerCallThread;,
        Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static mConfigFdnContactSearchSupported:Z

.field static mDockState:I

.field static mIsDockConnected:Z

.field public static mIsLargeMultiCallUI:Z

.field public static mIsProximityCloseDistance:Z

.field public static mIsScreenOn:Z

.field public static mIsUsbConnected:Z

.field private static sMe:Lcom/android/phone/PhoneApp;


# instance fields
.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mHandler:Landroid/os/Handler;

.field private mIgnoreTouchUserActivity:Z

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field private mIsSimPinEnabled:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mLockClearReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPokeLockToken:Landroid/os/IBinder;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTtyEnabled:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field notifier:Lcom/android/phone/CallNotifier;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field phoneMgrExt:Lcom/android/phone/PhoneInterfaceManagerExt;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 178
    sput v1, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 179
    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    .line 278
    sput-boolean v2, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    .line 287
    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsLargeMultiCallUI:Z

    return-void

    :cond_0
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 510
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 175
    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 176
    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 177
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 220
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 222
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 223
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 224
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 225
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 240
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 243
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    new-instance v0, Lcom/android/phone/PhoneApp$LockPatternClear;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$LockPatternClear;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLockClearReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    iput v1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 306
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 2148
    new-instance v0, Lcom/android/phone/PhoneApp$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$2;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 511
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 512
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneApp;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/PhoneApp;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/PhoneApp;Landroid/app/KeyguardManager$KeyguardLock;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/phone/PhoneApp;)Landroid/app/KeyguardManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/PhoneApp;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onSSInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 764
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    return-object v0
.end method

.method static createCallLogIntent(Z)Landroid/content/Intent;
    .locals 6
    .parameter "isDetailView"

    .prologue
    const/4 v5, 0x1

    .line 769
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCallLogIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    if-nez p0, :cond_0

    .line 772
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 773
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v2, "ViewBy"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v1, v0

    .line 780
    .end local v0           #intent:Landroid/content/Intent;
    .local v1, intent:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 777
    .end local v1           #intent:Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.dialertab.calllog.DetailViewActivity"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "direct"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v1, v0

    .line 780
    .restart local v1       #intent:Ljava/lang/Object;
    goto :goto_0
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 792
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 795
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2
    .parameter "showDialpad"

    .prologue
    .line 820
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 821
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 822
    return-object v0
.end method

.method static createInVTCallIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 806
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 809
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getVTCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInVTCallIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",&&&&& "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Class : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-object v0
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 744
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 751
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static getVTCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    const-class v0, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v3, "PhoneApp"

    .line 2018
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2019
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2020
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PhoneApp"

    const-string v1, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_2
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v4

    .line 2026
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2029
    const-string v2, "ttyEnabled"

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2030
    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2033
    packed-switch v0, :pswitch_data_0

    .line 2045
    const-string v0, "tty_off"

    .line 2048
    :goto_2
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 2049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tty_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 2029
    goto :goto_1

    .line 2035
    :pswitch_0
    const-string v0, "tty_full"

    goto :goto_2

    .line 2038
    :pswitch_1
    const-string v0, "tty_vco"

    goto :goto_2

    .line 2041
    :pswitch_2
    const-string v0, "tty_hco"

    goto :goto_2

    .line 2033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1943
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1947
    const-string v1, ""

    .line 1949
    if-eqz v0, :cond_0

    .line 1950
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1951
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 1952
    packed-switch v0, :pswitch_data_0

    .line 1961
    :cond_0
    :pswitch_0
    return-void

    .line 1952
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 2054
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2056
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2057
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2062
    return-void
.end method

.method private initForNewRadioTechnology()V
    .locals 4

    .prologue
    const-string v2, "PhoneApp"

    .line 1560
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "initForNewRadioTechnology..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1564
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1565
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1568
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_1

    .line 1569
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1571
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_2

    .line 1572
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1574
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_3

    .line 1575
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1577
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_4

    .line 1578
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1585
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1586
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1587
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_5

    .line 1588
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 1590
    :cond_5
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_6

    .line 1591
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 1595
    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1596
    if-eqz v0, :cond_8

    .line 1597
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "PhoneApp"

    const-string v1, "Update registration for ICC status..."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1602
    :cond_8
    return-void

    .line 1582
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    goto :goto_0
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1548
    const-string v0, "PhoneApp"

    const-string v1, "onMMIComplete()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1550
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1551
    return-void
.end method

.method private onSSInfo(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1554
    const-string v0, "PhoneApp"

    const-string v1, "onSSInfo()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 1556
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displaySSInfo(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SuppServiceNotification;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1557
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

    .line 1678
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1696
    :goto_0
    return v0

    .line 1684
    :pswitch_0
    if-ne p0, v4, :cond_0

    if-ne p1, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 1693
    :pswitch_1
    if-ne p0, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 1678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePokeLock()V
    .locals 5

    .prologue
    const-string v4, "PhoneApp"

    .line 1077
    const/4 v0, 0x0

    .line 1079
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 1080
    or-int/lit8 v0, v0, 0x10

    .line 1130
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v3, "PhoneApp"

    invoke-interface {v1, v0, v2, v3}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method autoAnsweringMode(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "answeringmode_auto_time"

    .line 2076
    if-nez p1, :cond_1

    .line 2077
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- autoAnswerCall : don\'t get ringing connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2083
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoanswering_without_device"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2084
    const/4 v1, 0x3

    .line 2086
    if-nez v0, :cond_4

    .line 2088
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    .line 2089
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    :cond_2
    const-string v0, "answeringmode_auto_time"

    .line 2093
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "answeringmode_auto_time"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2094
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2099
    :goto_2
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 2100
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 2101
    new-instance v3, Lcom/android/phone/PhoneApp$AutoAnswerCallThread;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/PhoneApp$AutoAnswerCallThread;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public clearInCallScreenMode()V
    .locals 2

    .prologue
    .line 2003
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- clearInCallScreenMode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 2005
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 2007
    :cond_1
    return-void
.end method

.method public clearOtaState()V
    .locals 3

    .prologue
    const-string v2, "PhoneApp"

    .line 1983
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "- clearOtaState ..."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 1986
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1987
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v0, "  - clearOtaState clears OTA screen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_1
    return-void
.end method

.method clearUserActivityTimeout()V
    .locals 5

    .prologue
    .line 2066
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->clearUserActivityTimeout(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2071
    :goto_0
    return-void

    .line 2068
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method disableStatusBar()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 998
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "disable status bar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    monitor-enter p0

    .line 1000
    :try_start_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-nez v0, :cond_2

    .line 1001
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "StatusBarManager.DISABLE_EXPAND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1004
    :cond_2
    monitor-exit p0

    .line 1005
    return-void

    .line 1004
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
    .line 914
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 915
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

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 927
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 929
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 935
    :cond_1
    :goto_0
    return-void

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 1993
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "- dismissOtaDialogs ..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 1996
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1997
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v0, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_1
    return-void
.end method

.method displayCallScreen()V
    .locals 2

    .prologue
    .line 836
    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 838
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    .line 839
    return-void
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdnavailable()Z

    move-result v0

    return v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPartialWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method handleOtaEvents(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 945
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "Enter handleOtaEvents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v0, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    .line 951
    :cond_1
    return-void
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 4

    .prologue
    .line 1964
    const/4 v0, 0x0

    .line 1965
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 1968
    :cond_0
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

    .line 1969
    return v0
.end method

.method isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isShowingInVTCallScreen()Z
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 901
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimFDNEnabled()Z
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    return v0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 729
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    .line 730
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 736
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 737
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 738
    return-void

    .line 732
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const-string v8, "PhoneApp"

    .line 516
    const-string v0, "PhoneApp"

    const-string v0, "onCreate()..."

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 520
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_7

    .line 522
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 525
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 527
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 528
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 531
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Landroid/content/Context;)V

    .line 533
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 534
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgrExt:Lcom/android/phone/PhoneInterfaceManagerExt;

    .line 536
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 540
    if-ne v0, v11, :cond_0

    .line 542
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 543
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 546
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 547
    new-instance v0, Lcom/android/phone/BluetoothHandsfree;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 548
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 554
    :goto_0
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 560
    sput-boolean v7, Lcom/android/phone/PhoneApp;->mConfigFdnContactSearchSupported:Z

    .line 563
    const-string v0, "GT-I9100"

    const-string v1, "GT-I9220"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    sput-boolean v10, Lcom/android/phone/PhoneApp;->mIsLargeMultiCallUI:Z

    .line 572
    :cond_1
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 573
    const v1, 0x1000001a

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 577
    const v1, 0x20000001

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 580
    const v1, 0x1000000a

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 584
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 586
    const/16 v1, 0x20

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v1, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 589
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mProximityWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 593
    new-instance v0, Lcom/android/phone/AccelerometerListener;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 596
    :cond_4
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 597
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 600
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 604
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 608
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mSensorManager:Landroid/hardware/SensorManager;

    .line 609
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mProximitySensor:Landroid/hardware/Sensor;

    .line 611
    new-instance v0, Lcom/android/phone/CallNotifier;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v5, Lcom/android/phone/CallLogAsync;

    invoke-direct {v5}, Lcom/android/phone/CallLogAsync;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 614
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_5

    .line 616
    const-string v1, "PhoneApp"

    const-string v1, "register for ICC status"

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 621
    :cond_5
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x46

    invoke-interface {v0, v1, v2, v9}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 632
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 634
    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v1, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v1, :cond_6

    .line 646
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    :cond_6
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v1, "android.intent.action.WB_AMR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 659
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 667
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 676
    const v0, 0x7f05000d

    invoke-static {p0, v0, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 678
    const/high16 v0, 0x7f05

    invoke-static {p0, v0, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 683
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 686
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v11, :cond_c

    move v0, v10

    .line 688
    :goto_1
    if-eqz v0, :cond_8

    .line 689
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 690
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 691
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 692
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 696
    :cond_8
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 699
    iput-boolean v7, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 708
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v0, :cond_9

    .line 709
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 713
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 716
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 717
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_aid"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 720
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 721
    const-string v1, "HACSetting"

    if-eqz v0, :cond_d

    const-string v0, "ON"

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_a
    return-void

    .line 551
    :cond_b
    iput-object v9, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_0

    :cond_c
    move v0, v7

    .line 686
    goto/16 :goto_1

    .line 721
    :cond_d
    const-string v0, "OFF"

    goto :goto_2
.end method

.method public orientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1489
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1490
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1491
    return-void
.end method

.method pokeUserActivity()V
    .locals 5

    .prologue
    const-string v4, "PhoneApp"

    .line 1381
    const-string v0, "PhoneApp"

    const-string v0, "pokeUserActivity()..."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    :goto_0
    return-void

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method preventScreenOn(Z)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "PhoneApp"

    .line 1346
    const-string v0, "PhoneApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- preventScreenOn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :goto_0
    return-void

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    const-string v1, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method proximitySensorModeEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1530
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1531
    .local v0, myCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1532
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1536
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method reenableStatusBar()V
    .locals 2

    .prologue
    const-string v1, "PhoneApp"

    .line 1014
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v0, "re-enable status bar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    monitor-enter p0

    .line 1016
    :try_start_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-lez v0, :cond_3

    .line 1017
    iget v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarDisableCount:I

    if-nez v0, :cond_2

    .line 1018
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "StatusBarManager.DISABLE_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1024
    :cond_2
    :goto_0
    monitor-exit p0

    .line 1025
    return-void

    .line 1022
    :cond_3
    const-string v0, "PhoneApp"

    const-string v1, "mStatusBarDisableCount is already zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1024
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .locals 3
    .parameter

    .prologue
    .line 1146
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWakeState("

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

    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_3

    .line 1149
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1185
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1196
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1198
    :cond_3
    monitor-exit p0

    .line 1199
    return-void

    .line 1153
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1154
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1155
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1157
    :cond_4
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1164
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1165
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1166
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1168
    :cond_5
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1173
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenBrightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1175
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1176
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1178
    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setBeginningCall(Z)V
    .locals 1
    .parameter "beginning"

    .prologue
    .line 1397
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1399
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1400
    return-void
.end method

.method setIgnoreTouchUserActivity(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1368
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

    .line 1369
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 1370
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    .line 1371
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 879
    return-void
.end method

.method setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "inVTCallScreen"

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 882
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 968
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 985
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 295
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .locals 3
    .parameter

    .prologue
    .line 1042
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

    .line 1047
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-ne p1, v0, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1056
    :cond_0
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 1057
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_0
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    return v0
.end method

.method updateBluetoothIndication(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1640
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 1643
    if-eqz p1, :cond_3

    .line 1646
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 1647
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingInVTCallScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->requestUpdateBluetoothIndication()V

    .line 1648
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1653
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1654
    return-void
.end method

.method public updateInCallScreenTouchUi()V
    .locals 2

    .prologue
    .line 2011
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreenTouchUi ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 2013
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateTouchUi()V

    .line 2015
    :cond_1
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 1498
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_1

    .line 1499
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 1500
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1501
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v0, :cond_0

    .line 1503
    iput v2, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1508
    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1514
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1518
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 1515
    goto :goto_0
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "proximity_sensor"

    const-string v2, "PhoneApp"

    .line 1431
    const-string v0, "PhoneApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProximitySensorMode: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1434
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1438
    :try_start_0
    const-string v1, "proximity_sensor"

    .line 1439
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "proximity_sensor"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1441
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_5

    :cond_1
    move v1, v5

    .line 1448
    :goto_0
    iget v2, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    move v2, v5

    .line 1450
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v3, :cond_8

    :cond_2
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    .line 1454
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1455
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    const-string v2, "updateProximitySensorMode: acquiring..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1458
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    .line 1459
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1484
    :goto_2
    monitor-exit v0

    .line 1486
    :cond_4
    return-void

    :cond_5
    move v1, v4

    .line 1441
    goto :goto_0

    :cond_6
    move v2, v4

    .line 1448
    goto :goto_1

    .line 1462
    :cond_7
    const-string v1, "PhoneApp"

    const-string v2, "updateProximitySensorMode: lock already held."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1467
    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1468
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "PhoneApp"

    const-string v3, "updateProximitySensorMode: releasing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_9
    if-eqz v1, :cond_a

    move v1, v4

    .line 1474
    :goto_3
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 1476
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1477
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    goto :goto_2

    :cond_a
    move v1, v5

    .line 1472
    goto :goto_3

    .line 1480
    :cond_b
    const-string v1, "PhoneApp"

    const-string v2, "updateProximitySensorMode: lock already released."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method updateVTDuringCallWakeState(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1328
    const-string v0, "PhoneApp"

    const-string v1, "PhoneAPP :: updateVTDuringCallWakeState : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    if-eqz p1, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1331
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 1332
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SCREEN_BRIGHT:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1338
    :goto_0
    return-void

    .line 1334
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto :goto_0

    .line 1336
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto :goto_0
.end method

.method updateWakeState()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "PhoneApp"

    .line 1230
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1235
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    .line 1240
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v7

    .line 1250
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_5

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v7

    .line 1258
    :goto_1
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWakeState: callscreen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dialer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", speaker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v3, :cond_6

    .line 1280
    :cond_1
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1312
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_8

    move v0, v7

    .line 1313
    :goto_3
    iget-object v2, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_9

    move v2, v7

    .line 1314
    :goto_4
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    move v1, v7

    .line 1316
    :goto_5
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-eqz v1, :cond_b

    :cond_2
    move v3, v7

    .line 1317
    :goto_6
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWakeState: keepScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (isRinging "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", isDialing "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", showingDisc "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_3
    const-string v0, "PhoneApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneAPP :: Update Wake Call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    if-eqz v3, :cond_c

    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1324
    return-void

    :cond_4
    move v2, v6

    .line 1240
    goto/16 :goto_0

    :cond_5
    move v3, v6

    .line 1250
    goto/16 :goto_1

    .line 1283
    :cond_6
    if-eqz v2, :cond_7

    .line 1292
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_2

    .line 1301
    :cond_7
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_2

    :cond_8
    move v0, v6

    .line 1312
    goto/16 :goto_3

    :cond_9
    move v2, v6

    .line 1313
    goto/16 :goto_4

    :cond_a
    move v1, v6

    .line 1314
    goto/16 :goto_5

    :cond_b
    move v3, v6

    .line 1316
    goto :goto_6

    .line 1323
    :cond_c
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_7
.end method

.method wakeUpScreen()V
    .locals 5

    .prologue
    .line 1206
    monitor-enter p0

    .line 1207
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_1

    .line 1208
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1215
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1216
    return-void

    .line 1215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1211
    :catch_0
    move-exception v0

    goto :goto_0
.end method
