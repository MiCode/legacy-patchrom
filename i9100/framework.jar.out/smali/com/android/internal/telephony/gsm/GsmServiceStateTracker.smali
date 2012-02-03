.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field static final HOMEZONE_CITY:I = 0x29a

.field static final HOMEZONE_HOME:I = 0x309

.field private static final KEY_SIM_PROFILE_MCCMNC:Ljava/lang/String; = "simprof.key.mccmnc"

.field private static final KEY_SIM_PROFILE_NWK_NAME:Ljava/lang/String; = "simprof.key.nwkname"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_DISP_O2_HOMEZONE_TAG_LEN:I = 0xd

.field static final MAX_NUM_DATA_STATE_READS:I = 0x96

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field private static final SIM_NUMERIC_VIRGIN:Ljava/lang/String; = "23430"

.field private static final SIM_PROFILE_PREFERENCES_NAME:Ljava/lang/String; = "simprof.preferences_name"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field private static deniedDialog:Landroid/app/AlertDialog;

.field private static mRescanDialog:Landroid/app/AlertDialog;


# instance fields
.field private IsShow:Z

.field private MccNumChanged:Z

.field private PrevMcc:Ljava/lang/String;

.field after2min:Z

.field allNetworkName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;",
            ">;"
        }
    .end annotation
.end field

.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private countCheckDataStateReads:I

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private gprsAttachedRegistrants:Landroid/os/RegistrantList;

.field private gprsDetachedRegistrants:Landroid/os/RegistrantList;

.field private gprsState:I

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsProfileSelected:Z

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field mLuRejCause:I

.field private mNeedFixZone:Z

.field private mNeedToRegForSimLoaded:Z

.field private mNewHsxpaNetworkType:I

.field mNewLuRejCause:I

.field mNewRilRegState:I

.field private mNotification:Landroid/app/Notification;

.field mPreferredNetworkType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportedGprsNoReg:Z

.field mRilRegState:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

.field private mStartedGprsRegCheck:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private networkType:I

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field private newNetworkType:I

.field onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field rs:Lcom/android/internal/telephony/gsm/RestrictedState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 267
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    .line 268
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 14
    .parameter "phone"

    .prologue
    const/4 v9, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v13, ""

    .line 311
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 127
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 128
    iput v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 133
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    .line 134
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    .line 140
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 146
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 151
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 153
    new-instance v8, Landroid/os/RegistrantList;

    invoke-direct {v8}, Landroid/os/RegistrantList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    .line 154
    new-instance v8, Landroid/os/RegistrantList;

    invoke-direct {v8}, Landroid/os/RegistrantList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    .line 155
    new-instance v8, Landroid/os/RegistrantList;

    invoke-direct {v8}, Landroid/os/RegistrantList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 156
    new-instance v8, Landroid/os/RegistrantList;

    invoke-direct {v8}, Landroid/os/RegistrantList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 163
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 167
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 191
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 192
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    .line 194
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    .line 206
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 209
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 221
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 222
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 223
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 246
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 250
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 251
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 258
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 261
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    .line 265
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewLuRejCause:I

    .line 269
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    .line 272
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 2619
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2915
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 313
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 314
    iget-object v8, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 315
    new-instance v8, Landroid/telephony/ServiceState;

    invoke-direct {v8}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 316
    new-instance v8, Landroid/telephony/ServiceState;

    invoke-direct {v8}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 317
    new-instance v8, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v8}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 318
    new-instance v8, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v8}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 319
    new-instance v8, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 320
    new-instance v8, Landroid/telephony/SignalStrength;

    invoke-direct {v8}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 322
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 324
    .local v5, powerManager:Landroid/os/PowerManager;
    const-string v8, "ServiceStateTracker"

    invoke-virtual {v5, v12, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 326
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0xd

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, p0, v12, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0xb

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 331
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0xc

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x17

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 333
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x11

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x27

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->setOnO2HomeZoneInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x28

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x29

    invoke-interface {v8, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->setHsdpaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 344
    .local v1, airplaneMode:I
    if-gtz v1, :cond_2

    move v8, v12

    :goto_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 347
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v9, "auto_time"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v12, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 350
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 351
    iput-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 354
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v8, "android.intent.action.CSC_MODEM_SETTING"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v8, "android.intent.action.SIM_INIT_CRASH"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "simprof.preferences_name"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 369
    .local v6, preferences:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    .line 370
    const-string/jumbo v8, "simprof.key.nwkname"

    const-string v9, ""

    invoke-interface {v6, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, name:Ljava/lang/String;
    const-string/jumbo v8, "simprof.key.mccmnc"

    const-string v9, ""

    invoke-interface {v6, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, mccmnc:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 375
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    invoke-direct {v8, p0, v4, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 376
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SIM profile] selected profile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v3           #mccmnc:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 386
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v8, "prev_mcc_num"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 388
    const-string v8, "gsm.booting.phone"

    const-string v9, ""

    invoke-static {v8, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, Bootingphone:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 391
    const-string v8, "gsm.booting.phone"

    const-string/jumbo v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v8, ""

    iput-object v13, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 404
    :cond_1
    return-void

    .end local v0           #Bootingphone:Ljava/lang/String;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v6           #preferences:Landroid/content/SharedPreferences;
    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_2
    move v8, v10

    .line 344
    goto/16 :goto_0
.end method

.method private GetTimezoneInfoUsingMcc(Ljava/lang/String;)V
    .locals 14
    .parameter "operatorNumeric"

    .prologue
    const/high16 v12, 0x2000

    const/4 v11, 0x3

    const/4 v10, 0x0

    const-string v13, "android.intent.action.MCC_SET_TIME"

    const-string v9, "GSM"

    .line 1698
    if-nez p1, :cond_0

    .line 1700
    const-string v7, "GSM"

    const-string/jumbo v7, "operatorNumeric is null"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :goto_0
    return-void

    .line 1704
    :cond_0
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1705
    .local v0, NewMcc:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "000"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1708
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mcc is changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 1710
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 1711
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1712
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1713
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "prev_mcc_num"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1714
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1716
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v7, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1720
    .local v4, mcc:I
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMccExt(I)Ljava/lang/String;

    move-result-object v6

    .line 1721
    .local v6, zoneId:Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ZONE ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1724
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 1725
    .local v3, manualTimeZone:Ljava/util/TimeZone;
    if-nez v3, :cond_1

    .line 1727
    const-string v7, "GSM"

    const-string/jumbo v7, "manualTimeZone is NULL. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1729
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1730
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1733
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v7, "GSM"

    const-string v7, "TIMEZONE Update"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const-string/jumbo v7, "persist.sys.timezone"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1739
    .end local v3           #manualTimeZone:Ljava/util/TimeZone;
    :cond_2
    const-string v7, "GSM"

    const-string v7, "Multi Time Zone. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1742
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1748
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mcc:I
    .end local v5           #sp:Landroid/content/SharedPreferences;
    .end local v6           #zoneId:Ljava/lang/String;
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showSimProfileOption(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitz()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    return v0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->clearNwkProfilePreference()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    return-void
.end method

.method private broadcastStartNetStatPoll()V
    .locals 3

    .prologue
    .line 1690
    const-string v1, "GSM"

    const-string v2, "broadcastStartNetStatPoll()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BROADCAST_START_NET_STAT_POLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1692
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1693
    return-void
.end method

.method private clearNwkProfilePreference()V
    .locals 5

    .prologue
    .line 2604
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 2606
    const-string v2, "GSM"

    const-string v3, "[SIM profile] clear preference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "simprof.preferences_name"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2611
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 2612
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2613
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "simprof.key.nwkname"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2614
    const-string/jumbo v2, "simprof.key.mccmnc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2615
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2617
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private createAllNetworkList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "simOperatorNumeric"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2720
    const/4 v4, 0x0

    .line 2721
    .local v4, nwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 2723
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2725
    .local v18, networkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;>;"
    new-instance v13, Ljava/io/File;

    const-string v5, "/data/data/com.android.providers.telephony/databases"

    const-string/jumbo v6, "nwk_info.db"

    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    .local v13, databaseFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2737
    new-instance v13, Ljava/io/File;

    .end local v13           #databaseFile:Ljava/io/File;
    const-string v5, "/system/csc"

    const-string/jumbo v6, "nwk_info.db"

    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    .restart local v13       #databaseFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2739
    const-string v5, "GSM"

    const-string/jumbo v6, "no nwk info db"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    const/4 v5, 0x0

    .line 2796
    :goto_0
    return-object v5

    .line 2743
    :cond_0
    const-string v5, "GSM"

    const-string v6, "csc in system area"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :goto_1
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plmn = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2759
    .local v7, selection:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2760
    :try_start_1
    const-string/jumbo v5, "nwkinfo"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2768
    :cond_1
    if-eqz v12, :cond_4

    .line 2769
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2771
    :cond_2
    const-string/jumbo v5, "nwkname"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2772
    .local v17, name:Ljava/lang/String;
    const-string/jumbo v5, "plmn"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2773
    .local v16, mccmnc:Ljava/lang/String;
    if-eqz v17, :cond_3

    if-eqz v16, :cond_3

    .line 2774
    new-instance v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    .local v15, item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2777
    .end local v15           #item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .line 2785
    .end local v16           #mccmnc:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    :cond_4
    if-eqz v12, :cond_5

    .line 2786
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2787
    const/4 v12, 0x0

    .line 2790
    :cond_5
    if-eqz v4, :cond_6

    .line 2791
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2792
    .end local v7           #selection:Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    :cond_6
    move-object/from16 v5, v18

    .line 2796
    goto/16 :goto_0

    .line 2746
    :cond_7
    const-string v5, "GSM"

    const-string/jumbo v6, "provider data area"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2751
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 2752
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "GSM"

    const-string/jumbo v6, "nwk info db open exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2781
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v7       #selection:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v14, v5

    .line 2782
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught during nwkinfo query: "

    .end local v7           #selection:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2785
    if-eqz v12, :cond_8

    .line 2786
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2787
    const/4 v12, 0x0

    .line 2790
    :cond_8
    if-eqz v4, :cond_6

    .line 2791
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 2785
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v12, :cond_9

    .line 2786
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2787
    const/4 v12, 0x0

    .line 2790
    :cond_9
    if-eqz v4, :cond_a

    .line 2791
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2792
    const/4 v4, 0x0

    .line 2785
    :cond_a
    throw v5
.end method

.method private dismissDeniedDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2944
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2946
    :try_start_0
    const-string v0, "dismiss deniedDialog"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2947
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2954
    :goto_0
    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 2957
    :cond_0
    return-void

    .line 2954
    :catchall_0
    move-exception v0

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    throw v0

    .line 2950
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private displayLUrejectcause()I
    .locals 4

    .prologue
    .line 2809
    const/4 v0, 0x0

    .line 2811
    .local v0, id:I
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSpnDisplay(); mEmergencyOnly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ss.getState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRilRegState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLuRejCause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLuRejCause:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    if-nez v1, :cond_1

    .line 2902
    :cond_1
    return v0
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 2100
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 2102
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 2103
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 2104
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 2105
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 2107
    if-gez p0, :cond_0

    .line 2108
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 2109
    neg-int p0, p0

    .line 2114
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 2115
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 2117
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2118
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2120
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 2122
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2123
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2125
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 2111
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 15
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1783
    move/from16 v8, p1

    .line 1784
    .local v8, rawOffset:I
    if-eqz p2, :cond_0

    .line 1785
    const v12, 0x36ee80

    sub-int/2addr v8, v12

    .line 1787
    :cond_0
    invoke-static {v8}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v11

    .line 1788
    .local v11, zones:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1789
    .local v5, guess:Ljava/util/TimeZone;
    new-instance v4, Ljava/util/Date;

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1790
    .local v4, d:Ljava/util/Date;
    move-object v3, v11

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v10, v3, v6

    .line 1791
    .local v10, zone:Ljava/lang/String;
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[NITZ] findTimeZone: searching ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 1793
    .local v9, tz:Ljava/util/TimeZone;
    move-object v0, v9

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v12

    move v0, v12

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    invoke-virtual {v9, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    move v0, v12

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 1795
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[NITZ] findTimeZone: guessed ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    move-object v5, v9

    .line 1801
    .end local v9           #tz:Ljava/util/TimeZone;
    .end local v10           #zone:Ljava/lang/String;
    :cond_1
    return-object v5

    .line 1790
    .restart local v9       #tz:Ljava/util/TimeZone;
    .restart local v10       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2356
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    .line 2359
    :goto_0
    return v1

    .line 2356
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2358
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 2359
    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 4
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    const-string v3, "GSM"

    .line 1769
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1770
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1771
    const-string v1, "GSM"

    const-string v1, "[NITZ] getNitzTimeZone: with reverted DST flag"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1776
    :cond_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NITZ] getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_2

    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return-object v0

    .line 1773
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1776
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    .line 1761
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 20
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    .line 2004
    const-string v17, "gsm.sim.operator.alpha"

    const-string v18, "empty"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2006
    .local v16, spn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v12

    .line 2007
    .local v12, onsl:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v13

    .line 2009
    .local v13, onss:Ljava/lang/String;
    if-eqz v12, :cond_1

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 2010
    .local v6, equalsOnsl:Z
    :goto_0
    if-eqz v13, :cond_2

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 2012
    .local v7, equalsOnss:Z
    :goto_1
    const-string v17, "gsm.sim.operator.numeric"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2014
    .local v15, simNumeric:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    .line 2024
    .local v14, operatorNumeric:Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    :cond_0
    const/16 v17, 0x0

    .line 2061
    :goto_2
    return v17

    .line 2009
    .end local v6           #equalsOnsl:Z
    .end local v7           #equalsOnss:Z
    .end local v14           #operatorNumeric:Ljava/lang/String;
    .end local v15           #simNumeric:Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    move/from16 v6, v17

    goto :goto_0

    .line 2010
    .restart local v6       #equalsOnsl:Z
    :cond_2
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_1

    .line 2025
    .restart local v7       #equalsOnss:Z
    .restart local v14       #operatorNumeric:Ljava/lang/String;
    .restart local v15       #simNumeric:Ljava/lang/String;
    :cond_3
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 2026
    :cond_5
    const/4 v5, 0x1

    .line 2028
    .local v5, equalsMnc:Z
    const/4 v4, 0x1

    .line 2030
    .local v4, equalsMcc:Z
    const/16 v17, 0x0

    const/16 v18, 0x3

    :try_start_0
    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2034
    const/16 v17, 0x3

    const/16 v18, 0x5

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x5

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2036
    if-nez v5, :cond_8

    .line 2037
    const-string v17, "46000"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "46001"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "46002"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "46007"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2038
    :cond_6
    const-string v17, "46000"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "46001"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "46002"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "46007"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_8

    .line 2039
    :cond_7
    const/4 v5, 0x1

    .line 2047
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/SIMRecords;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v8

    .line 2048
    .local v8, fho:[Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 2049
    move-object v3, v8

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_4
    if-ge v10, v11, :cond_b

    aget-object v9, v3, v10

    .line 2050
    .local v9, h:Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2051
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 2049
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2058
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #h:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_b
    if-eqz p1, :cond_e

    .line 2059
    if-eqz p1, :cond_d

    if-eqz v4, :cond_c

    if-nez v6, :cond_d

    if-nez v7, :cond_d

    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 2061
    :cond_e
    if-eqz p1, :cond_10

    if-eqz v4, :cond_f

    if-nez v5, :cond_10

    :cond_f
    const/16 v17, 0x1

    goto/16 :goto_2

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 2043
    .end local v8           #fho:[Ljava/lang/String;
    :catch_0
    move-exception v17

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2600
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    return-void
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 1356
    const-string/jumbo v0, "unknown"

    .line 1358
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1378
    :pswitch_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :goto_0
    return-object v0

    .line 1360
    :pswitch_1
    const-string v0, "GPRS"

    .line 1361
    goto :goto_0

    .line 1363
    :pswitch_2
    const-string v0, "EDGE"

    .line 1364
    goto :goto_0

    .line 1366
    :pswitch_3
    const-string v0, "UMTS"

    .line 1367
    goto :goto_0

    .line 1369
    :pswitch_4
    const-string v0, "HSDPA"

    .line 1370
    goto :goto_0

    .line 1372
    :pswitch_5
    const-string v0, "HSUPA"

    .line 1373
    goto :goto_0

    .line 1375
    :pswitch_6
    const-string v0, "HSPA"

    .line 1376
    goto :goto_0

    .line 1358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onHsxpaStateChanged(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const-string v8, "GSM"

    .line 2550
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v3, v0

    .line 2551
    .local v3, state:[I
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    .line 2553
    .local v2, oldHsxpaNetworkType:I
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HSXPA] state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    aget v4, v3, v6

    packed-switch v4, :pswitch_data_0

    .line 2569
    const-string v4, "GSM"

    const-string v4, "[HSXPA] invalid state"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    .line 2574
    :goto_0
    if-lt v2, v7, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    if-eq v4, v2, :cond_0

    .line 2575
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 2576
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v5, "gsm.network.type"

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 2595
    .local v1, Check:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2597
    .end local v1           #Check:Ljava/lang/Thread;
    :cond_0
    return-void

    .line 2557
    :pswitch_0
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    goto :goto_0

    .line 2560
    :pswitch_1
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    goto :goto_0

    .line 2563
    :pswitch_2
    const/16 v4, 0xb

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    goto :goto_0

    .line 2566
    :pswitch_3
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I

    goto :goto_0

    .line 2555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onO2HomeZoneInfo(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2483
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v6, v0

    .line 2484
    .local v6, homeZoneInfo:[I
    const/16 v17, 0x0

    aget v14, v6, v17

    .line 2485
    .local v14, zone_inid:I
    const/16 v17, 0x1

    aget v16, v6, v17

    .line 2486
    .local v16, zone_type:I
    const/16 v17, 0x2

    aget v15, v6, v17

    .line 2487
    .local v15, zone_tag_present:I
    const/16 v17, 0xd

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v12, v0

    .line 2488
    .local v12, tempAlphaID:[B
    const-string v9, ""

    .line 2491
    .local v9, message:Ljava/lang/CharSequence;
    const/16 v10, 0x309

    .line 2492
    .local v10, notificationId:I
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 2496
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2497
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x1000

    move-object v0, v5

    move/from16 v1, v18

    move-object v2, v8

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2499
    const-string/jumbo v17, "notification"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 2502
    .local v11, notificationManager:Landroid/app/NotificationManager;
    const-string v13, ""

    .line 2503
    .local v13, title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2505
    packed-switch v14, :pswitch_data_0

    .line 2547
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2509
    :pswitch_1
    if-eqz v16, :cond_0

    .line 2513
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2514
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v17, 0xd

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 2515
    add-int/lit8 v17, v7, 0x3

    aget v17, v6, v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v12, v7

    .line 2514
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2517
    :cond_1
    const/16 v17, 0x0

    const/16 v18, 0xd

    move-object v0, v12

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v9

    .line 2519
    .end local v7           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v13

    move-object v3, v9

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2521
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const v18, 0x10803f9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v11

    move v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2529
    :cond_3
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const v18, 0x10803f4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v11

    move v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2541
    :pswitch_2
    invoke-virtual {v11, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 2505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    const/16 v10, 0x3ec

    const/16 v9, 0x3eb

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "GSM"

    .line 1873
    const-string v4, "GSM"

    const-string v4, "[DSAC DEB] onRestrictedStateChanged"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    new-instance v2, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    .line 1876
    .local v2, newRs:Lcom/android/internal/telephony/gsm/RestrictedState;
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] current rs at enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 1879
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    .line 1880
    .local v1, ints:[I
    aget v3, v1, v6

    .line 1882
    .local v3, state:I
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_6

    :cond_0
    move v4, v8

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 1886
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_2

    .line 1887
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_7

    :cond_1
    move v4, v8

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsNormalRestricted(Z)V

    .line 1890
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_8

    move v4, v8

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setPsRestricted(Z)V

    .line 1894
    :cond_2
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] new rs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1897
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1898
    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1909
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1910
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1912
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1955
    :cond_4
    :goto_4
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 1957
    .end local v1           #ints:[I
    .end local v3           #state:I
    :cond_5
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] current rs at return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    return-void

    .restart local v1       #ints:[I
    .restart local v3       #state:I
    :cond_6
    move v4, v6

    .line 1882
    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 1887
    goto :goto_1

    :cond_8
    move v4, v6

    .line 1890
    goto :goto_2

    .line 1899
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1900
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1901
    const/16 v4, 0x3ea

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 1913
    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1915
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1916
    :cond_b
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1918
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1920
    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1921
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1923
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1924
    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1926
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1927
    :cond_e
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1929
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1931
    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1932
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1934
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1935
    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1937
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1938
    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1940
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1943
    :cond_12
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1945
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1946
    :cond_13
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1948
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1949
    :cond_14
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1951
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 15
    .parameter "ar"

    .prologue
    const/4 v3, -0x1

    .line 1827
    iget-object v13, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1828
    .local v13, oldSignalStrength:Landroid/telephony/SignalStrength;
    const/16 v14, 0x63

    .line 1830
    .local v14, rssi:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v1, v0

    if-eqz v1, :cond_1

    .line 1833
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1847
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength;

    and-int/lit16 v2, v14, 0xff

    const/4 v9, 0x1

    const v4, 0xff00

    and-int/2addr v4, v14

    shr-int/lit8 v10, v4, 0x8

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v1 .. v10}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZI)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1854
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v13}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1857
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    :cond_0
    :goto_1
    return-void

    .line 1835
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v12, v0

    .line 1838
    .local v12, ints:[I
    array-length v1, v12

    if-eqz v1, :cond_2

    .line 1839
    const/4 v1, 0x0

    aget v14, v12, v1

    goto :goto_0

    .line 1841
    :cond_2
    const-string v1, "GSM"

    const-string v2, "Bogus signal strength response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const/16 v14, 0x63

    goto :goto_0

    .line 1858
    .end local v12           #ints:[I
    :catch_0
    move-exception v1

    move-object v11, v1

    .line 1859
    .local v11, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SignalStrength not notified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private pollState(Z)V
    .locals 4
    .parameter "issuePollCmd"

    .prologue
    const/4 v3, 0x0

    .line 1289
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    .line 1292
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1328
    if-eqz p1, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1331
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1335
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getGPRSRegistrationState(Landroid/os/Message;)V

    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1294
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1296
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1297
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1298
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1302
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1304
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1305
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1306
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1314
    :pswitch_2
    const-string v0, "GSM"

    const-string v1, "Radio Technology Change ongoing, setting SS to off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1316
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1317
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1318
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    goto :goto_0

    .line 1292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 35

    .prologue
    .line 1387
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "] newSS=["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "] oldGprs="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " newGprs="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " oldType="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " newType="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-nez v31, :cond_a

    const/16 v31, 0x1

    move/from16 v15, v31

    .line 1399
    .local v15, hasRegistered:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-nez v31, :cond_0

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_b

    .line 1401
    const-string v31, "GSM"

    const-string/jumbo v32, "pollStateDone(), STATE_IN_SERVICE but newSS.getOperatorNumeric() returned NULL"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-nez v31, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-eqz v31, :cond_c

    const/16 v31, 0x1

    move/from16 v10, v31

    .line 1417
    .local v10, hasDeregistered:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    if-nez v31, :cond_d

    const/16 v31, 0x1

    move/from16 v11, v31

    .line 1421
    .local v11, hasGprsAttached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    if-nez v31, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    if-eqz v31, :cond_e

    const/16 v31, 0x1

    move/from16 v12, v31

    .line 1425
    .local v12, hasGprsDetached:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_f

    const/16 v31, 0x1

    move/from16 v14, v31

    .line 1427
    .local v14, hasNetworkTypeChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_10

    const/16 v31, 0x1

    move/from16 v9, v31

    .line 1429
    .local v9, hasChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-nez v31, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-eqz v31, :cond_11

    const/16 v31, 0x1

    move/from16 v17, v31

    .line 1431
    .local v17, hasRoamingOn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-eqz v31, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-nez v31, :cond_12

    const/16 v31, 0x1

    move/from16 v16, v31

    .line 1433
    .local v16, hasRoamingOff:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_13

    const/16 v31, 0x1

    move/from16 v13, v31

    .line 1451
    .local v13, hasLocationChanged:Z
    :goto_9
    const/16 v23, 0x0

    .line 1454
    .local v23, startPollStat:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    .line 1455
    :cond_1
    const v31, 0xc3c2

    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1460
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    .line 1461
    .local v25, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1462
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v24, v0

    .line 1467
    .local v24, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1468
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1473
    if-eqz v14, :cond_4

    .line 1474
    const/4 v6, -0x1

    .line 1475
    .local v6, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v19

    check-cast v19, Landroid/telephony/gsm/GsmCellLocation;

    .line 1476
    .local v19, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 1477
    :cond_3
    const v31, 0xc3c0

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1478
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "RAT switched "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " -> "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " at cell "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    .end local v6           #cid:I
    .end local v19           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v31

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_5

    .line 1485
    const/16 v23, 0x1

    .line 1488
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1493
    if-eqz v14, :cond_6

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_6
    if-eqz v15, :cond_7

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1502
    :cond_7
    if-eqz v9, :cond_1d

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    .line 1511
    .local v21, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.numeric"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-nez v31, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 1519
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;)V

    .line 1523
    :cond_8
    if-nez v21, :cond_14

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.iso-country"

    const-string v33, ""

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v33

    if-eqz v33, :cond_1a

    const-string/jumbo v33, "true"

    :goto_b
    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :goto_c
    const-string v31, "gsm.operator.isroaming"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v32

    if-eqz v32, :cond_1b

    const-string/jumbo v32, "true"

    :goto_d
    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1c

    .line 1606
    const-wide/16 v31, 0xa

    :try_start_0
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 1607
    :catch_0
    move-exception v31

    goto :goto_c

    .line 1394
    .end local v9           #hasChanged:Z
    .end local v10           #hasDeregistered:Z
    .end local v11           #hasGprsAttached:Z
    .end local v12           #hasGprsDetached:Z
    .end local v13           #hasLocationChanged:Z
    .end local v14           #hasNetworkTypeChanged:Z
    .end local v15           #hasRegistered:Z
    .end local v16           #hasRoamingOff:Z
    .end local v17           #hasRoamingOn:Z
    .end local v21           #operatorNumeric:Ljava/lang/String;
    .end local v23           #startPollStat:Z
    .end local v24           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v25           #tss:Landroid/telephony/ServiceState;
    :cond_a
    const/16 v31, 0x0

    move/from16 v15, v31

    goto/16 :goto_0

    .line 1404
    .restart local v15       #hasRegistered:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/SIMRecords;->getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1406
    .local v7, eons:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object v1, v7

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1413
    .end local v7           #eons:Ljava/lang/String;
    :cond_c
    const/16 v31, 0x0

    move/from16 v10, v31

    goto/16 :goto_2

    .line 1417
    .restart local v10       #hasDeregistered:Z
    :cond_d
    const/16 v31, 0x0

    move/from16 v11, v31

    goto/16 :goto_3

    .line 1421
    .restart local v11       #hasGprsAttached:Z
    :cond_e
    const/16 v31, 0x0

    move/from16 v12, v31

    goto/16 :goto_4

    .line 1425
    .restart local v12       #hasGprsDetached:Z
    :cond_f
    const/16 v31, 0x0

    move/from16 v14, v31

    goto/16 :goto_5

    .line 1427
    .restart local v14       #hasNetworkTypeChanged:Z
    :cond_10
    const/16 v31, 0x0

    move/from16 v9, v31

    goto/16 :goto_6

    .line 1429
    .restart local v9       #hasChanged:Z
    :cond_11
    const/16 v31, 0x0

    move/from16 v17, v31

    goto/16 :goto_7

    .line 1431
    .restart local v17       #hasRoamingOn:Z
    :cond_12
    const/16 v31, 0x0

    move/from16 v16, v31

    goto/16 :goto_8

    .line 1433
    .restart local v16       #hasRoamingOff:Z
    :cond_13
    const/16 v31, 0x0

    move/from16 v13, v31

    goto/16 :goto_9

    .line 1526
    .restart local v13       #hasLocationChanged:Z
    .restart local v21       #operatorNumeric:Ljava/lang/String;
    .restart local v23       #startPollStat:Z
    .restart local v24       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v25       #tss:Landroid/telephony/ServiceState;
    :cond_14
    const-string v18, ""

    .line 1528
    .local v18, iso:Ljava/lang/String;
    const/16 v31, 0x0

    const/16 v32, 0x3

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v18

    .line 1536
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.iso-country"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 1540
    const-string v31, "GSM"

    const-string v32, "[NITZ] pollStateDone: mNeedFixZone(true)"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/16 v28, 0x0

    .line 1545
    .local v28, zone:Ljava/util/TimeZone;
    const-string/jumbo v31, "persist.sys.timezone"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1546
    .local v30, zoneName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v31, v0

    if-nez v31, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v31, v0

    if-nez v31, :cond_18

    if-eqz v30, :cond_18

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_18

    sget-object v31, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v31

    if-gez v31, :cond_18

    .line 1549
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v28

    .line 1553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    move-object/from16 v0, v28

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 1554
    .local v26, tzOffset:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 1555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1590
    .end local v26           #tzOffset:J
    :cond_15
    :goto_f
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 1592
    if-eqz v28, :cond_9

    .line 1593
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v31

    if-eqz v31, :cond_16

    .line 1594
    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1596
    :cond_16
    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1530
    .end local v28           #zone:Ljava/util/TimeZone;
    .end local v30           #zoneName:Ljava/lang/String;
    :catch_1
    move-exception v31

    move-object/from16 v8, v31

    .line 1531
    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "countryCodeForMcc error"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1532
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v31

    move-object/from16 v8, v31

    .line 1533
    .local v8, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "countryCodeForMcc error"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1558
    .end local v8           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v26       #tzOffset:J
    .restart local v28       #zone:Ljava/util/TimeZone;
    .restart local v30       #zoneName:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v31, v0

    sub-long v31, v31, v26

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_f

    .line 1560
    .end local v26           #tzOffset:J
    :cond_18
    const-string v31, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 1564
    if-nez v28, :cond_15

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1567
    .local v20, mcc:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMccExt(I)Ljava/lang/String;

    move-result-object v29

    .line 1568
    .local v29, zoneId:Ljava/lang/String;
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "2. ZONE ID : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    if-eqz v29, :cond_15

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_15

    .line 1570
    invoke-static/range {v29 .. v29}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    goto/16 :goto_f

    .line 1576
    .end local v20           #mcc:I
    .end local v29           #zoneId:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v33, v0

    move/from16 v0, v31

    move/from16 v1, v32

    move-wide/from16 v2, v33

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    .line 1579
    if-nez v28, :cond_15

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1582
    .restart local v20       #mcc:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMccExt(I)Ljava/lang/String;

    move-result-object v29

    .line 1583
    .restart local v29       #zoneId:Ljava/lang/String;
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "3. ZONE ID : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    if-eqz v29, :cond_15

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_15

    .line 1585
    invoke-static/range {v29 .. v29}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    goto/16 :goto_f

    .line 1601
    .end local v18           #iso:Ljava/lang/String;
    .end local v20           #mcc:I
    .end local v28           #zone:Ljava/util/TimeZone;
    .end local v29           #zoneId:Ljava/lang/String;
    .end local v30           #zoneName:Ljava/lang/String;
    :cond_1a
    const-string v33, "false"

    goto/16 :goto_b

    .line 1605
    :cond_1b
    const-string v32, "false"

    goto/16 :goto_d

    .line 1611
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1614
    .end local v21           #operatorNumeric:Ljava/lang/String;
    :cond_1d
    if-eqz v11, :cond_1e

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1621
    :cond_1e
    if-eqz v15, :cond_1f

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-nez v31, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    if-nez v31, :cond_1f

    if-nez v11, :cond_1f

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1630
    :cond_1f
    if-eqz v12, :cond_20

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1634
    :cond_20
    if-eqz v14, :cond_21

    .line 1636
    new-instance v22, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 1651
    .local v22, propCheck:Ljava/lang/Thread;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    .line 1656
    .end local v22           #propCheck:Ljava/lang/Thread;
    :cond_21
    if-eqz v23, :cond_22

    .line 1657
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->broadcastStartNetStatPoll()V

    .line 1660
    :cond_22
    if-eqz v17, :cond_23

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1664
    :cond_23
    if-eqz v16, :cond_24

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1668
    :cond_24
    if-eqz v13, :cond_25

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1672
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v31

    if-nez v31, :cond_27

    .line 1673
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v31, v0

    if-nez v31, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v31, v0

    if-nez v31, :cond_26

    .line 1674
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "gprs_register_check_period_ms"

    const v33, 0xea60

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1680
    .local v5, check_period:I
    const/16 v31, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1686
    .end local v5           #check_period:I
    :cond_26
    :goto_10
    return-void

    .line 1684
    :cond_27
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto :goto_10
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 1805
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1813
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1814
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1819
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1993
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1962
    packed-switch p1, :pswitch_data_0

    .line 1981
    :pswitch_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1982
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v3

    .line 1971
    goto :goto_0

    .line 1962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private revertToNitz()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 2405
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2417
    :cond_0
    :goto_0
    return-void

    .line 2409
    :cond_1
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting to NITZ: tz=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' mSavedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavedAtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2414
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2368
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2370
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 2364
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 2365
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 2396
    const-string v1, "GSM"

    const-string v2, "[NITZ] setAndBroadcastNetworkSetTime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2399
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2400
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2401
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2402
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 2379
    const-string v2, "GSM"

    const-string v3, "[NITZ] setAndBroadcastNetworkSetTimeZone"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2382
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2383
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2384
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2385
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2386
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2387
    return-void
.end method

.method private setNotification(I)V
    .locals 10
    .parameter "notifyType"

    .prologue
    const-string v9, "GSM"

    .line 2426
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSAC DEB] create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2429
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2430
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2431
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2432
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2433
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2434
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2437
    const-string v1, ""

    .line 2438
    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x10400eb

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2439
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .line 2441
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 2463
    :goto_0
    :pswitch_0
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSAC DEB] put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2465
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2468
    const-string/jumbo v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2471
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_1

    .line 2473
    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2478
    :goto_1
    return-void

    .line 2443
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_1
    const/16 v3, 0x378

    .line 2444
    const v6, 0x10400ec

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2445
    goto :goto_0

    .line 2447
    :pswitch_2
    const/16 v3, 0x378

    .line 2448
    goto :goto_0

    .line 2450
    :pswitch_3
    const v6, 0x10400ef

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2451
    goto :goto_0

    .line 2453
    :pswitch_4
    const v6, 0x10400ee

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2454
    goto :goto_0

    .line 2456
    :pswitch_5
    const v6, 0x10400ed

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2457
    goto :goto_0

    .line 2476
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 2441
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 1275
    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v8, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1276
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 38
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 2135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    .line 2136
    .local v25, start:J
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " start="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " delay="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sub-long v34, v25, p2

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const-string v32, "GSM"

    const-string v33, "[NAM] Close Manual Selection Popup. Send Intent ACTION_NITZ_SET_TIME."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    new-instance v14, Landroid/content/Intent;

    const-string v32, "android.intent.action.NITZ_SET_TIME"

    move-object v0, v14

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2143
    .local v14, intent:Landroid/content/Intent;
    const/high16 v32, 0x2000

    move-object v0, v14

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2150
    :try_start_0
    const-string v32, "GMT"

    invoke-static/range {v32 .. v32}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 2152
    .local v7, c:Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 2153
    const/16 v32, 0x10

    const/16 v33, 0x0

    move-object v0, v7

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2155
    const-string v32, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2157
    .local v21, nitzSubs:[Ljava/lang/String;
    const/16 v32, 0x0

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v29, v0

    .line 2158
    .local v29, year:I
    const/16 v32, 0x1

    move-object v0, v7

    move/from16 v1, v32

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2161
    const/16 v32, 0x1

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/16 v33, 0x1

    sub-int v20, v32, v33

    .line 2162
    .local v20, month:I
    const/16 v32, 0x2

    move-object v0, v7

    move/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2164
    const/16 v32, 0x2

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2165
    .local v8, date:I
    const/16 v32, 0x5

    move-object v0, v7

    move/from16 v1, v32

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2167
    const/16 v32, 0x3

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2168
    .local v12, hour:I
    const/16 v32, 0xa

    move-object v0, v7

    move/from16 v1, v32

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2170
    const/16 v32, 0x4

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2171
    .local v19, minute:I
    const/16 v32, 0xc

    move-object v0, v7

    move/from16 v1, v32

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2173
    const/16 v32, 0x5

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2174
    .local v22, second:I
    const/16 v32, 0xd

    move-object v0, v7

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2176
    const/16 v32, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    const/16 v32, 0x1

    move/from16 v23, v32

    .line 2178
    .local v23, sign:Z
    :goto_0
    const/16 v32, 0x6

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2180
    .local v27, tzOffset:I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    const/16 v32, 0x7

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v9, v32

    .line 2190
    .local v9, dst:I
    :goto_1
    if-eqz v23, :cond_7

    const/16 v32, 0x1

    :goto_2
    mul-int v32, v32, v27

    mul-int/lit8 v32, v32, 0xf

    mul-int/lit8 v32, v32, 0x3c

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    .line 2192
    const/16 v30, 0x0

    .line 2198
    .local v30, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x9

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_0

    .line 2199
    const/16 v32, 0x8

    aget-object v32, v21, v32

    const/16 v33, 0x21

    const/16 v34, 0x2f

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v28

    .line 2204
    .local v28, tzname:Ljava/lang/String;
    const/16 v32, 0x2f

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    .line 2206
    invoke-static/range {v28 .. v28}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    .line 2236
    .end local v28           #tzname:Ljava/lang/String;
    :cond_0
    :goto_3
    const-string v32, "gsm.operator.iso-country"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2238
    .local v15, iso:Ljava/lang/String;
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[NITZ] setTimeFromNITZString: iso = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", dst = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", ZoneOffset = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    if-nez v30, :cond_1

    .line 2244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 2245
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_b

    .line 2246
    if-eqz v9, :cond_a

    const/16 v32, 0x1

    :goto_4
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move/from16 v0, v27

    move/from16 v1, v32

    move-wide/from16 v2, v33

    move-object v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    .line 2250
    if-nez v30, :cond_1

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2253
    .local v16, mcc:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMccExt(I)Ljava/lang/String;

    move-result-object v31

    .line 2254
    .local v31, zoneId:Ljava/lang/String;
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "1. ZONE ID : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    if-eqz v31, :cond_1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_1

    .line 2256
    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    .line 2281
    .end local v16           #mcc:I
    .end local v31           #zoneId:Ljava/lang/String;
    :cond_1
    :goto_5
    if-nez v30, :cond_2

    .line 2286
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 2287
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 2288
    if-eqz v9, :cond_c

    const/16 v32, 0x1

    :goto_6
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 2289
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 2292
    :cond_2
    if-eqz v30, :cond_4

    .line 2293
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 2294
    invoke-virtual/range {v30 .. v30}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2296
    :cond_3
    invoke-virtual/range {v30 .. v30}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2299
    :cond_4
    const-string v32, "gsm.ignore-nitz"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2300
    .local v13, ignore:Ljava/lang/String;
    if-eqz v13, :cond_d

    const-string/jumbo v32, "yes"

    move-object v0, v13

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 2301
    const-string v32, "GSM"

    const-string v33, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    .end local v7           #c:Ljava/util/Calendar;
    .end local v8           #date:I
    .end local v9           #dst:I
    .end local v12           #hour:I
    .end local v13           #ignore:Ljava/lang/String;
    .end local v15           #iso:Ljava/lang/String;
    .end local v19           #minute:I
    .end local v20           #month:I
    .end local v21           #nitzSubs:[Ljava/lang/String;
    .end local v22           #second:I
    .end local v23           #sign:Z
    .end local v27           #tzOffset:I
    .end local v29           #year:I
    .end local v30           #zone:Ljava/util/TimeZone;
    :goto_7
    return-void

    .line 2176
    .restart local v7       #c:Ljava/util/Calendar;
    .restart local v8       #date:I
    .restart local v12       #hour:I
    .restart local v19       #minute:I
    .restart local v20       #month:I
    .restart local v21       #nitzSubs:[Ljava/lang/String;
    .restart local v22       #second:I
    .restart local v29       #year:I
    :cond_5
    const/16 v32, 0x0

    move/from16 v23, v32

    goto/16 :goto_0

    .line 2180
    .restart local v23       #sign:Z
    .restart local v27       #tzOffset:I
    :cond_6
    const/16 v32, 0x0

    move/from16 v9, v32

    goto/16 :goto_1

    .line 2190
    .restart local v9       #dst:I
    :cond_7
    const/16 v32, -0x1

    goto/16 :goto_2

    .line 2212
    .restart local v28       #tzname:Ljava/lang/String;
    .restart local v30       #zone:Ljava/util/TimeZone;
    :cond_8
    const/16 v32, 0x8

    aget-object v6, v21, v32

    .line 2213
    .local v6, NitzOperator:Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 2215
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2216
    const/16 v32, 0x0

    const/16 v33, 0x3

    move-object v0, v6

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2217
    .local v5, NewMcc:Ljava/lang/String;
    const-string v32, "000"

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 2219
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 2223
    .local v24, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 2224
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v32, "prev_mcc_num"

    move-object v0, v10

    move-object/from16 v1, v32

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2225
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2349
    .end local v5           #NewMcc:Ljava/lang/String;
    .end local v6           #NitzOperator:Ljava/lang/String;
    .end local v7           #c:Ljava/util/Calendar;
    .end local v8           #date:I
    .end local v9           #dst:I
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #hour:I
    .end local v19           #minute:I
    .end local v20           #month:I
    .end local v21           #nitzSubs:[Ljava/lang/String;
    .end local v22           #second:I
    .end local v23           #sign:Z
    .end local v24           #sp:Landroid/content/SharedPreferences;
    .end local v27           #tzOffset:I
    .end local v28           #tzname:Ljava/lang/String;
    .end local v29           #year:I
    .end local v30           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v32

    move-object/from16 v11, v32

    .line 2350
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2230
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .restart local v6       #NitzOperator:Ljava/lang/String;
    .restart local v7       #c:Ljava/util/Calendar;
    .restart local v8       #date:I
    .restart local v9       #dst:I
    .restart local v12       #hour:I
    .restart local v19       #minute:I
    .restart local v20       #month:I
    .restart local v21       #nitzSubs:[Ljava/lang/String;
    .restart local v22       #second:I
    .restart local v23       #sign:Z
    .restart local v27       #tzOffset:I
    .restart local v28       #tzname:Ljava/lang/String;
    .restart local v29       #year:I
    .restart local v30       #zone:Ljava/util/TimeZone;
    :cond_9
    :try_start_1
    const-string v32, "GSM"

    const-string v33, "NitzOperator is null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2246
    .end local v6           #NitzOperator:Ljava/lang/String;
    .end local v28           #tzname:Ljava/lang/String;
    .restart local v15       #iso:Ljava/lang/String;
    :cond_a
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 2261
    :cond_b
    if-nez v30, :cond_1

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2264
    .restart local v16       #mcc:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMccExt(I)Ljava/lang/String;

    move-result-object v31

    .line 2265
    .restart local v31       #zoneId:Ljava/lang/String;
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "1.1. ZONE ID : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    if-eqz v31, :cond_1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_1

    .line 2267
    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v30

    goto/16 :goto_5

    .line 2288
    .end local v16           #mcc:I
    .end local v31           #zoneId:Ljava/lang/String;
    :cond_c
    const/16 v32, 0x0

    goto/16 :goto_6

    .line 2306
    .restart local v13       #ignore:Ljava/lang/String;
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2308
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 2309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    sub-long v17, v32, p2

    .line 2312
    .local v17, millisSinceNitzReceived:J
    const-wide/16 v32, 0x0

    cmp-long v32, v17, v32

    if-gez v32, :cond_e

    .line 2314
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2347
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_7

    .line 2320
    :cond_e
    const-wide/32 v32, 0x7fffffff

    cmp-long v32, v17, v32

    if-lez v32, :cond_f

    .line 2322
    :try_start_4
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-wide/32 v34, 0x5265c00

    div-long v34, v17, v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " days"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2347
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_7

    .line 2329
    :cond_f
    const/16 v32, 0xe

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v33, v0

    :try_start_6
    move-object v0, v7

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 2331
    const-string v32, "GSM"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NITZ: Setting time of day to "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " NITZ receive delay(ms): "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " gained(ms): "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    sub-long v34, v34, v36

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " from "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2338
    const-string v32, "GSM"

    const-string v33, "NITZ: after Setting time of day"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    .end local v17           #millisSinceNitzReceived:J
    :cond_10
    const-string v32, "gsm.nitz.time"

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2347
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catchall_0
    move-exception v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v32
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method private showDeniedDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 2926
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    if-nez v1, :cond_0

    .line 2928
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2930
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2931
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2932
    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onDenidedDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2933
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2935
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    .line 2937
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2938
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->deniedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2939
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->IsShow:Z

    .line 2941
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private showSimProfileOption(Z)V
    .locals 20
    .parameter "cscIntent"

    .prologue
    .line 2656
    const-string v4, "csc.preferences_name"

    .line 2657
    .local v4, CSC_PREFERENCES_NAME:Ljava/lang/String;
    const-string v5, "csc.key.already_executed"

    .line 2659
    .local v5, KEY_CSC_ALREADY_EXECUTED:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 2660
    .local v13, operator:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2663
    .local v7, cscUpdated:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "com.samsung.sec.android.application.csc"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 2664
    .local v6, context:Landroid/content/Context;
    const/16 v17, 0x1

    move-object v0, v6

    move-object v1, v4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 2665
    .local v14, preferences:Landroid/content/SharedPreferences;
    const/16 v17, 0x0

    move-object v0, v14

    move-object v1, v5

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2671
    .end local v6           #context:Landroid/content/Context;
    .end local v14           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    const-string v17, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[SIM profile] operator: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    const-string v17, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[SIM profile] cscUpdated: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " cscIntent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    if-eqz v13, :cond_6

    if-nez p1, :cond_0

    if-eqz v7, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 2675
    const-string/jumbo v15, "ril.isIccChanged"

    .line 2677
    .local v15, propNameChangedICC:Ljava/lang/String;
    const-string v17, "0"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2678
    .local v11, iccChanged:Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string v17, "1"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 2681
    :cond_2
    if-eqz v11, :cond_3

    const-string v17, "1"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2682
    const-string v17, "GSM"

    const-string v18, "[SIM profile] SIM changed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->clearNwkProfilePreference()V

    .line 2686
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->createAllNetworkList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    .line 2688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2689
    const-string v17, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[SIM profile] network list size: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v12, v0

    .line 2695
    .local v12, items:[Ljava/lang/String;
    const/4 v10, 0x0

    .end local p1
    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 2696
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v17, v12, v10

    .line 2695
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2667
    .end local v10           #i:I
    .end local v11           #iccChanged:Ljava/lang/String;
    .end local v12           #items:[Ljava/lang/String;
    .end local v15           #propNameChangedICC:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v17

    move-object/from16 v9, v17

    .line 2668
    .local v9, e:Ljava/lang/Exception;
    const-string v17, "GSM"

    const-string v18, "[SIM profile] exception occured"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2700
    .end local v9           #e:Ljava/lang/Exception;
    .end local p1
    .restart local v10       #i:I
    .restart local v11       #iccChanged:Ljava/lang/String;
    .restart local v12       #items:[Ljava/lang/String;
    .restart local v15       #propNameChangedICC:Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 2701
    .local v16, r:Landroid/content/res/Resources;
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x1040444

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object v1, v12

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 2706
    .local v8, d:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d3

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 2707
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 2717
    .end local v8           #d:Landroid/app/AlertDialog;
    .end local v10           #i:I
    .end local v11           #iccChanged:Ljava/lang/String;
    .end local v12           #items:[Ljava/lang/String;
    .end local v15           #propNameChangedICC:Ljava/lang/String;
    .end local v16           #r:Landroid/content/res/Resources;
    :cond_6
    :goto_2
    return-void

    .line 2710
    .restart local v11       #iccChanged:Ljava/lang/String;
    .restart local v15       #propNameChangedICC:Ljava/lang/String;
    .restart local p1
    :cond_7
    const-string v17, "GSM"

    const-string v18, "[SIM profile] refresh profile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    .line 2068
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2069
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2071
    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 2073
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2076
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method protected afterRequestDisconnectDC()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "StkAppInstaller"

    const-string v9, "GSM"

    .line 829
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v5, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 831
    .local v1, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_2

    .line 833
    const-string v5, "GSM"

    const-string v5, "Data shutdown complete."

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 849
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 852
    .local v3, isAirplaneMode:I
    if-ne v3, v8, :cond_1

    .line 855
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 856
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez v4, :cond_0

    .line 857
    const-string v5, "StkAppInstaller"

    const-string v5, "Package Manager null"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.stk"

    const-string v6, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .local v0, cName:Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    .line 865
    const/4 v5, 0x2

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v0           #cName:Landroid/content/ComponentName;
    .end local v3           #isAirplaneMode:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return-void

    .line 836
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    const/16 v6, 0x96

    if-le v5, v6, :cond_3

    .line 837
    const-string v5, "GSM"

    const-string v5, "Data shutdown not complete. force to radio down."

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 842
    const/16 v5, 0x32

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 867
    .restart local v0       #cName:Landroid/content/ComponentName;
    .restart local v3       #isAirplaneMode:I
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 868
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "StkAppInstaller"

    const-string v5, "Could not change STK app state"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 419
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 422
    const-string v0, "GSM"

    const-string v1, "GsmServiceStateTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    .line 2084
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method public getSelectedNetworkProfile()Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 522
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    packed-switch v15, :pswitch_data_0

    .line 776
    :pswitch_0
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unhandled message with number: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 532
    .restart local p0
    .restart local p1
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    move v15, v0

    if-eqz v15, :cond_1

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v16, 0x10

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 535
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 550
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    .line 554
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 568
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 569
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto :goto_0

    .line 573
    :pswitch_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto :goto_0

    .line 580
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v15

    if-nez v15, :cond_0

    .line 584
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 585
    .local v4, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 591
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 593
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_4

    .line 594
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 595
    .local v13, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .line 596
    .local v7, lac:I
    const/4 v5, -0x1

    .line 597
    .local v5, cid:I
    array-length v15, v13

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    .line 599
    const/4 v15, 0x1

    :try_start_0
    aget-object v15, v13, v15

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 600
    const/4 v15, 0x1

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 602
    :cond_2
    const/4 v15, 0x2

    aget-object v15, v13, v15

    if-eqz v15, :cond_3

    const/4 v15, 0x2

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 603
    const/4 v15, 0x2

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 609
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object v15, v0

    invoke-virtual {v15, v7, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 615
    .end local v5           #cid:I
    .end local v7           #lac:I
    .end local v13           #states:[Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 605
    .restart local v5       #cid:I
    .restart local v7       #lac:I
    .restart local v13       #states:[Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v6, v15

    .line 606
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error parsing location: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 622
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #cid:I
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    .end local v7           #lac:I
    .end local v13           #states:[Ljava/lang/String;
    .restart local p1
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 624
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 632
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 636
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 638
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v12, p1, v15

    check-cast v12, Ljava/lang/String;

    .line 639
    .local v12, nitzString:Ljava/lang/String;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v15, 0x1

    aget-object p1, p1, v15

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 641
    .local v10, nitzReceiveTime:J
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 648
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v10           #nitzReceiveTime:J
    .end local v12           #nitzString:Ljava/lang/String;
    .restart local p1
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 652
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    .line 654
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 658
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 661
    const-string v15, "GSM"

    const-string v16, "[SIM profile] SIM loaded"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showSimProfileOption(Z)V

    .line 666
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto/16 :goto_0

    .line 671
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 673
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_0

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 679
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 681
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/16 v15, 0x15

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 682
    .local v9, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v16, v0

    move-object v0, v15

    move/from16 v1, v16

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 686
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v9           #message:Landroid/os/Message;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 687
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v15, :cond_0

    .line 688
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static/range {p0 .. p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v15

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 690
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 695
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 697
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_5

    .line 698
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/4 v15, 0x0

    aget v15, p1, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 702
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move v15, v0

    const/16 v16, 0x7

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 709
    :goto_2
    const/16 v15, 0x14

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 710
    .restart local v9       #message:Landroid/os/Message;
    const/4 v14, 0x7

    .line 712
    .local v14, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15, v14, v9}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 706
    .end local v9           #message:Landroid/os/Message;
    .end local v14           #toggledNetworkType:I
    .restart local p1
    :cond_5
    const/4 v15, 0x7

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .line 716
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object v15, v0

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v15

    if-nez v15, :cond_6

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v8

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    .line 722
    .local v8, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v15, 0xc3bb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v18

    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 724
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 726
    .end local v8           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 722
    .restart local v8       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/16 v18, -0x1

    goto :goto_3

    .line 733
    .end local v8           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :pswitch_11
    const-string v15, "GSM"

    const-string v16, "[DSAC DEB] EVENT_RESTRICTED_STATE_CHANGED"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 737
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 741
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_12
    const-string v15, "GSM"

    const-string v16, "O2 Homezone info"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 744
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onO2HomeZoneInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 753
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 754
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onHsxpaStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 758
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v15, "GSM"

    const-string v16, "EVENT_REQUEST_DISCONNECT_DC"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->afterRequestDisconnectDC()V

    goto/16 :goto_0

    .line 766
    :pswitch_15
    const-string v15, "GSM"

    const-string v16, "EVENT_LU_REJECT_CAUSE"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 769
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dismissDeniedDialog()V

    .line 770
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->after2min:Z

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_1
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 19
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1079
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 1272
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1081
    .restart local p1
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v15, v0

    if-eqz v15, :cond_8

    .line 1082
    const/4 v4, 0x0

    .line 1084
    .local v4, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v15, v0

    instance-of v15, v15, Lcom/android/internal/telephony/CommandException;

    if-eqz v15, :cond_2

    .line 1085
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    .line 1088
    :cond_2
    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v15, :cond_3

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1094
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v15

    if-nez v15, :cond_4

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1100
    :cond_4
    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v4, v15, :cond_5

    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v4, v15, :cond_5

    .line 1102
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    .end local v4           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object v15, v0

    const/16 v16, 0x0

    aget v17, v15, v16

    const/16 v18, 0x1

    sub-int v17, v17, v18

    aput v17, v15, v16

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    if-nez v15, :cond_0

    .line 1248
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move v15, v0

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move v15, v0

    if-eqz v15, :cond_12

    :cond_6
    const/4 v15, 0x1

    move v11, v15

    .line 1249
    .local v11, roaming:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move v15, v0

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1250
    const/4 v11, 0x0

    .line 1252
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    invoke-virtual {v15, v11}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1107
    .end local v11           #roaming:Z
    .restart local p1
    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 1109
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1110
    .local v13, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .line 1111
    .local v7, lac:I
    const/4 v3, -0x1

    .line 1112
    .local v3, cid:I
    const/4 v10, -0x1

    .line 1113
    .local v10, regState:I
    const/4 v9, -0x1

    .line 1114
    .local v9, psc:I
    array-length v15, v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v15, :cond_b

    .line 1116
    const/4 v15, 0x0

    :try_start_1
    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1117
    array-length v15, v13

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    .line 1118
    const/4 v15, 0x1

    aget-object v15, v13, v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_9

    .line 1119
    const/4 v15, 0x1

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 1121
    :cond_9
    const/4 v15, 0x2

    aget-object v15, v13, v15

    if-eqz v15, :cond_a

    const/4 v15, 0x2

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_a

    .line 1122
    const/4 v15, 0x2

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1125
    :cond_a
    array-length v15, v13

    const/16 v16, 0xe

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_b

    .line 1126
    const/16 v15, 0xe

    aget-object v15, v13, v15

    if-eqz v15, :cond_b

    const/16 v15, 0xe

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_b

    .line 1127
    const/16 v15, 0xe

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 1147
    :cond_b
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1159
    const/16 v15, 0xa

    if-eq v10, v15, :cond_c

    const/16 v15, 0xc

    if-eq v10, v15, :cond_c

    const/16 v15, 0xd

    if-eq v10, v15, :cond_c

    const/16 v15, 0xe

    if-ne v10, v15, :cond_d

    .line 1160
    :cond_c
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1166
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object v15, v0

    invoke-virtual {v15, v7, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object v15, v0

    invoke-virtual {v15, v9}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1231
    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v9           #psc:I
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v5, v15

    .line 1232
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v15, "GSM"

    const-string v16, "Exception while polling service state. Probably malformed RIL response."

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1142
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #cid:I
    .restart local v7       #lac:I
    .restart local v9       #psc:I
    .restart local v10       #regState:I
    .restart local v13       #states:[Ljava/lang/String;
    :catch_1
    move-exception v15

    move-object v5, v15

    .line 1143
    .local v5, ex:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error parsing RegistrationState: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1162
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    :cond_d
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_4

    .line 1171
    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v9           #psc:I
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    .restart local p1
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1173
    .restart local v13       #states:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 1174
    .local v14, type:I
    const/4 v10, -0x1

    .line 1175
    .restart local v10       #regState:I
    array-length v15, v13
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-lez v15, :cond_e

    .line 1177
    const/4 v15, 0x0

    :try_start_4
    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1180
    array-length v15, v13

    const/16 v16, 0x4

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_e

    const/4 v15, 0x3

    aget-object v15, v13, v15

    if-eqz v15, :cond_e

    .line 1181
    const/4 v15, 0x3

    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v14

    .line 1187
    :cond_e
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1188
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1189
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    invoke-virtual {v15, v14}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    goto/16 :goto_1

    .line 1183
    :catch_2
    move-exception v15

    move-object v5, v15

    .line 1184
    .restart local v5       #ex:Ljava/lang/NumberFormatException;
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1194
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    .end local v14           #type:I
    .restart local p1
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 1196
    .local v8, opNames:[Ljava/lang/String;
    if-eqz v8, :cond_5

    array-length v15, v8

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    .line 1199
    .local v12, simNumeric:Ljava/lang/String;
    if-eqz v12, :cond_f

    const/4 v15, 0x2

    aget-object v15, v8, v15

    if-eqz v15, :cond_f

    const/4 v15, 0x2

    aget-object v15, v8, v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const-string v15, "23430"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v17, v8, v17

    const/16 v18, 0x2

    aget-object v18, v8, v18

    invoke-virtual/range {v15 .. v18}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1209
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    const-string v16, "23430"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    if-nez v12, :cond_10

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, v8, v17

    const/16 v18, 0x2

    aget-object v18, v8, v18

    invoke-virtual/range {v15 .. v18}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1216
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v16, v8, v16

    const/16 v17, 0x1

    aget-object v17, v8, v17

    const/16 v18, 0x2

    aget-object v18, v8, v18

    invoke-virtual/range {v15 .. v18}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1226
    .end local v8           #opNames:[Ljava/lang/String;
    .end local v12           #simNumeric:Ljava/lang/String;
    .restart local p1
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v6, v0

    .line 1227
    .local v6, ints:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    const/16 v16, 0x0

    aget v16, v6, v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    const/16 v16, 0x1

    :goto_6
    invoke-virtual/range {v15 .. v16}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_11
    const/16 v16, 0x0

    goto :goto_6

    .line 1248
    .end local v6           #ints:[I
    :cond_12
    const/4 v15, 0x0

    move v11, v15

    goto/16 :goto_2

    .line 1107
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method isConcurrentVoiceAndData()Z
    .locals 2

    .prologue
    .line 2092
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected powerOffRadioSafely()V
    .locals 6

    .prologue
    .line 879
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 880
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 881
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 882
    const-string/jumbo v3, "radioTurnedOff"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 883
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 887
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x96

    if-ge v1, v3, :cond_0

    .line 888
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    .line 890
    const-string v3, "GSM"

    const-string v4, "Data shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 898
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 899
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 900
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 903
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 904
    return-void

    .line 893
    :cond_2
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 887
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 432
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 433
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 435
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 438
    :cond_0
    return-void
.end method

.method registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 464
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 465
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 467
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 470
    :cond_0
    return-void
.end method

.method registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 445
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 451
    :cond_0
    return-void
.end method

.method registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 503
    const-string v1, "GSM"

    const-string v2, "[DSAC DEB] registerForPsRestrictedDisabled "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 505
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 507
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 510
    :cond_0
    return-void
.end method

.method registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 483
    const-string v1, "GSM"

    const-string v2, "[DSAC DEB] registerForPsRestrictedEnabled "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 485
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 487
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 490
    :cond_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 783
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 785
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 788
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataConnectionAsDesired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 789
    const v1, 0xc3bc

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getStateInString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 818
    :cond_2
    const/16 v1, 0x97

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 820
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    move v3, v5

    .line 789
    goto :goto_1
.end method

.method unregisterForGprsAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 442
    return-void
.end method

.method unregisterForGprsDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 474
    return-void
.end method

.method unregisterForNetworkAttach(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 455
    return-void
.end method

.method unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 514
    return-void
.end method

.method unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 494
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 13

    .prologue
    .line 909
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v11, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnDynamic(Ljava/lang/String;)V

    .line 912
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v11, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v5

    .line 913
    .local v5, rule:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v9

    .line 914
    .local v9, spn:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 917
    .local v3, plmn:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 918
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040331

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 921
    :cond_0
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-eqz v10, :cond_1

    .line 923
    const/4 v5, 0x2

    .line 925
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10404c9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 944
    :cond_1
    const-string v10, "gsm.sim.operator.numeric"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 945
    .local v8, simNum:Ljava/lang/String;
    const-string v10, "46000"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "46001"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "46002"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "46007"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-nez v10, :cond_d

    .line 951
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMCC_PLMN] rule before = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v5, 0x2

    .line 953
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMCC_PLMN] rule after = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 959
    .local v2, loc:Ljava/util/Locale;
    const-string v10, "gsm.network.type"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, actString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-nez v10, :cond_c

    .line 962
    const-string v10, "46001"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 963
    const-string v10, "HSDPA"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "UMTS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 964
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10404d7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "3G"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1022
    .end local v0           #actString:Ljava/lang/String;
    .end local v2           #loc:Ljava/util/Locale;
    :cond_4
    :goto_0
    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    if-ne v5, v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1025
    :cond_5
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v10, :cond_16

    and-int/lit8 v10, v5, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_16

    const/4 v10, 0x1

    move v7, v10

    .line 1027
    .local v7, showSpn:Z
    :goto_1
    and-int/lit8 v10, v5, 0x2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_17

    const/4 v10, 0x1

    move v6, v10

    .line 1046
    .local v6, showPlmn:Z
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-eqz v10, :cond_6

    .line 1048
    const/4 v7, 0x0

    .line 1049
    const/4 v6, 0x1

    .line 1051
    const/4 v5, 0x0

    .line 1052
    const/4 v9, 0x0

    .line 1057
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v1, intent:Landroid/content/Intent;
    const/high16 v10, 0x2000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1059
    const-string/jumbo v10, "showSpn"

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1060
    const-string/jumbo v10, "spn"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    const-string/jumbo v10, "showPlmn"

    invoke-virtual {v1, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1062
    const-string/jumbo v10, "plmn"

    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1066
    .end local v1           #intent:Landroid/content/Intent;
    .end local v6           #showPlmn:Z
    .end local v7           #showSpn:Z
    :cond_7
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1067
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1068
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1069
    return-void

    .line 967
    .restart local v0       #actString:Ljava/lang/String;
    .restart local v2       #loc:Ljava/util/Locale;
    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10404d7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 971
    :cond_9
    const-string v10, "HSDPA"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "UMTS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 972
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10404d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "3G"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 975
    :cond_b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10404d6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 981
    :cond_c
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ROAM] It is roaming state with CHINA Operators SIM card. Display registered plmn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 987
    .end local v0           #actString:Ljava/lang/String;
    .end local v2           #loc:Ljava/util/Locale;
    :cond_d
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-nez v10, :cond_4

    .line 989
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMCC_PLMN] rule before = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v5, 0x2

    .line 991
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CMCC_PLMN] rule after = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 995
    .restart local v2       #loc:Ljava/util/Locale;
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 996
    .local v4, registeredNum:Ljava/lang/String;
    const-string v10, "gsm.network.type"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    .restart local v0       #actString:Ljava/lang/String;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ROAM] plmn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " spn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "registeredNum : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    if-eqz v4, :cond_f

    .line 1000
    const-string v10, "46001"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1001
    const-string v10, "HSDPA"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "UMTS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1002
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10404d7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "3G"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1018
    :cond_f
    :goto_3
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ROAM] plmn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " spn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1005
    :cond_10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10404d7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1007
    :cond_11
    const-string v10, "46000"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "46002"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "46007"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1008
    :cond_12
    const-string v10, "HSDPA"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "UMTS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1009
    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10404d6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "3G"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1012
    :cond_14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10404d6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 1015
    :cond_15
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ROAM] registered number is not China operator : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1025
    .end local v0           #actString:Ljava/lang/String;
    .end local v2           #loc:Ljava/util/Locale;
    .end local v4           #registeredNum:Ljava/lang/String;
    :cond_16
    const/4 v10, 0x0

    move v7, v10

    goto/16 :goto_1

    .line 1027
    .restart local v7       #showSpn:Z
    :cond_17
    const/4 v10, 0x0

    move v6, v10

    goto/16 :goto_2
.end method
