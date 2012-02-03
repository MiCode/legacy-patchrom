.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$8;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;,
        Lcom/android/phone/PhoneUtils$AMRState;
    }
.end annotation


# static fields
.field private static AMR_codec:Lcom/android/phone/PhoneUtils$AMRState;

.field static BIN_DEFAULT_DIR:Ljava/lang/String;

.field static BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field private static ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

.field static LANGUAGE_CHINA:I

.field static LANGUAGE_ENGLISH:I

.field static LANGUAGE_KOREA:I

.field private static RAW_CONTACTS_SNS_PROJECTION:[Ljava/lang/String;

.field static VERSION_DEFAULT_DIR:Ljava/lang/String;

.field static VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field static headerSize:I

.field private static isNoiseSuppressionEnabled:Z

.field private static isNoiseSuppressionEnabledByUser:Z

.field private static mCallConnectedToneHandle:Landroid/media/MediaPlayer;

.field private static mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field private static mIsMmiDialogHiding:Z

.field private static mMmiDialog:Landroid/app/AlertDialog;

.field private static mMmiTimeoutCbMsg:Landroid/os/Message;

.field private static mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

.field static mobileSize:I

.field public static mpreRAFTstate:I

.field static provinceSize:I

.field private static sBirthFormat:[Ljava/lang/String;

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSpeakerEnabled:Z

.field private static sToast:Landroid/widget/Toast;

.field static telSize:I

.field static titleSeekCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 154
    sput-object v3, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 156
    sput-object v3, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 161
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabledByUser:Z

    .line 162
    sput-boolean v4, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabled:Z

    .line 163
    sget-object v0, Lcom/android/phone/PhoneUtils$AMRState;->NB:Lcom/android/phone/PhoneUtils$AMRState;

    sput-object v0, Lcom/android/phone/PhoneUtils;->AMR_codec:Lcom/android/phone/PhoneUtils$AMRState;

    .line 166
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/PhoneUtils;->sBirthFormat:[Ljava/lang/String;

    .line 169
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sns_id"

    aput-object v1, v0, v2

    const-string v1, "sp"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/PhoneUtils;->RAW_CONTACTS_SNS_PROJECTION:[Ljava/lang/String;

    .line 175
    sput-object v3, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 176
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 178
    sput-object v3, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    .line 181
    sput-object v3, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    .line 182
    sput-object v3, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    .line 195
    sput v2, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    .line 274
    new-instance v0, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 1901
    new-instance v0, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$4;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 3817
    const/16 v0, 0x83

    sput v0, Lcom/android/phone/PhoneUtils;->telSize:I

    .line 3818
    const/16 v0, 0x60

    sput v0, Lcom/android/phone/PhoneUtils;->provinceSize:I

    .line 3819
    const/16 v0, 0x81

    sput v0, Lcom/android/phone/PhoneUtils;->mobileSize:I

    .line 3820
    sput v5, Lcom/android/phone/PhoneUtils;->headerSize:I

    .line 3821
    const/16 v0, 0xc

    sput v0, Lcom/android/phone/PhoneUtils;->titleSeekCount:I

    .line 3822
    sput v4, Lcom/android/phone/PhoneUtils;->LANGUAGE_CHINA:I

    .line 3823
    sput v5, Lcom/android/phone/PhoneUtils;->LANGUAGE_KOREA:I

    .line 3824
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/PhoneUtils;->LANGUAGE_ENGLISH:I

    .line 3826
    const-string v0, "/system/etc/HomeLocationDB.bin"

    sput-object v0, Lcom/android/phone/PhoneUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 3827
    const-string v0, "/system/etc/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/phone/PhoneUtils;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 3828
    const-string v0, "/data/data/com.android.phone/HomeLocationDB.bin"

    sput-object v0, Lcom/android/phone/PhoneUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    .line 3829
    const-string v0, "/data/data/com.android.phone/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/phone/PhoneUtils;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    return-object p0
.end method

.method static synthetic access$500()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/phone/PhoneUtils;->RAW_CONTACTS_SNS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/phone/PhoneUtils;->sBirthFormat:[Ljava/lang/String;

    return-object v0
.end method

.method private static activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2949
    const-string v0, "activateSpeakerIfDocked()..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2951
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-ne v0, v2, :cond_1

    .line 2952
    const-string v0, "activateSpeakerIfDocked(): In a dock -> may need to turn on speaker."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2953
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2954
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 2956
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2957
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2960
    :cond_1
    return-void
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "cm"
    .parameter "ringing"

    .prologue
    .line 569
    const-string v0, "answerAndEndActive()..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    const-string v0, "PhoneUtils"

    const-string v1, "end active call failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    .line 592
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    .line 592
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 11
    .parameter "ringing"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 318
    const-string v7, "answerCall()..."

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 319
    if-nez p0, :cond_0

    .line 320
    const-string v7, "answerCall()... : riningCall is null"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v7, v10

    .line 398
    :goto_0
    return v7

    .line 325
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/Ringer;->stopRing()V

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, answered:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 329
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 330
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    move v6, v9

    .line 331
    .local v6, phoneIsCdma:Z
    :goto_1
    const/4 v2, 0x0

    .line 333
    .local v2, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v6, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_1

    .line 336
    iget-object v4, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 337
    .local v4, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 341
    .end local v4           #notifier:Lcom/android/phone/CallNotifier;
    :cond_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "answerCall: call state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 344
    if-eqz v6, :cond_2

    .line 345
    :try_start_0
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v7}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v7, v8, :cond_5

    .line 349
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 375
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    .line 376
    const/4 v0, 0x1

    .line 379
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 381
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 384
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    :cond_3
    :goto_3
    move v7, v0

    .line 398
    goto :goto_0

    .end local v2           #bthf:Lcom/android/phone/BluetoothHandsfree;
    .end local v6           #phoneIsCdma:Z
    :cond_4
    move v6, v10

    .line 330
    goto :goto_1

    .line 354
    .restart local v2       #bthf:Lcom/android/phone/BluetoothHandsfree;
    .restart local v6       #phoneIsCdma:Z
    :cond_5
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 362
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 367
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .line 368
    if-eqz v2, :cond_2

    .line 369
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 385
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 386
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerCall: caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    if-eqz v6, :cond_3

    .line 390
    iget-object v7, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v8, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 392
    if-eqz v2, :cond_3

    .line 393
    invoke-virtual {v2, v10}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    goto :goto_3
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2498
    packed-switch p0, :pswitch_data_0

    .line 2505
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2499
    :pswitch_1
    const-string v0, "MODE_INVALID"

    goto :goto_0

    .line 2500
    :pswitch_2
    const-string v0, "MODE_CURRENT"

    goto :goto_0

    .line 2501
    :pswitch_3
    const-string v0, "MODE_NORMAL"

    goto :goto_0

    .line 2502
    :pswitch_4
    const-string v0, "MODE_RINGTONE"

    goto :goto_0

    .line 2503
    :pswitch_5
    const-string v0, "MODE_IN_CALL"

    goto :goto_0

    .line 2504
    :pswitch_6
    const-string v0, "MODE_IN_VIDEOCALL"

    goto :goto_0

    .line 2498
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method static canEnableNoiseSuppression(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2348
    .line 2349
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2350
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 2352
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2353
    const/4 v1, 0x1

    .line 2354
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    .line 2361
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canEnableNoiseSuppression, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2362
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1446
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 1447
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMmiCode: num pending MMIs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1451
    if-lez v1, :cond_2

    .line 1456
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/MmiCode;

    .line 1457
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1458
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1459
    const/4 v0, 0x1

    .line 1464
    :goto_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v1, :cond_0

    .line 1466
    :try_start_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->clearMmiString()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    :cond_0
    :goto_1
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 1472
    sput-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1474
    :cond_1
    return v0

    .line 1467
    :catch_0
    move-exception v1

    .line 1468
    sput-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    .line 2843
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2844
    const-string v0, "PhoneUtils"

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :goto_0
    return-void

    .line 2848
    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2850
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 2745
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2748
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, PRIVATE string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2749
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    .line 2758
    :goto_0
    return v0

    .line 2750
    :cond_1
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2754
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, UNKNOWN string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2755
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    goto :goto_0

    .line 2757
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCnapSpecialCases, normal str. number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2758
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static dialVideoCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"

    .prologue
    .line 710
    const/4 v6, 0x0

    .line 712
    .local v6, status:I
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 715
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 717
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===> phone.dial() returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 719
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 722
    .local v5, phoneType:I
    if-nez v1, :cond_2

    .line 723
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 724
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dialed MMI code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 725
    const/4 v6, 0x1

    .line 727
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    .line 729
    :try_start_1
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V

    .line 730
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extended NW bindService setUssdString ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 788
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #phoneType:I
    :cond_0
    :goto_0
    return v6

    .line 731
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 732
    .local v3, e:Landroid/os/RemoteException;
    const/4 v8, 0x0

    :try_start_2
    sput-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 783
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #phoneType:I
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 784
    .local v4, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "PhoneUtils"

    const-string v9, "Exception from phone.dial()"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    const/4 v6, 0x2

    goto :goto_0

    .line 736
    .end local v4           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    .line 739
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 741
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 742
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 755
    :cond_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v2, "content"

    .line 756
    .local v2, content:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 757
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 758
    .local v7, userDataObject:Ljava/lang/Object;
    if-nez v7, :cond_5

    .line 759
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 779
    .end local v7           #userDataObject:Ljava/lang/Object;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 781
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 764
    .restart local v7       #userDataObject:Ljava/lang/Object;
    :cond_5
    instance-of v8, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_6

    .line 765
    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #userDataObject:Ljava/lang/Object;
    iput-object p2, v7, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_1

    .line 767
    .restart local v7       #userDataObject:Ljava/lang/Object;
    :cond_6
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v7           #userDataObject:Ljava/lang/Object;
    iget-object v8, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v8, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x7d8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1216
    .line 1217
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMMIComplete: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1221
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 1223
    :try_start_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1224
    const-string v1, "Extended NW displayMMIComplete removeMsg"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1227
    :goto_0
    sput-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1231
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneUtils$8;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1257
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected MmiCode state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1234
    :pswitch_0
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- using text from PENDING MMI message: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v2, v1

    move v1, v6

    .line 1260
    :goto_1
    if-eqz p4, :cond_1

    .line 1261
    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1266
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 1267
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v4, :cond_4

    .line 1268
    const-string v0, "displaying PUK unblocking progress dialog."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1272
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1273
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1274
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1275
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1276
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1277
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setType(I)V

    .line 1278
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1281
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1285
    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    .line 1418
    :cond_2
    :goto_2
    return-void

    .line 1238
    :pswitch_1
    const v1, 0x7f0d002f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    move v1, v6

    .line 1239
    goto :goto_1

    .line 1241
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1244
    const v1, 0x10400de

    .line 1245
    const v2, 0x7f0d0055

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 1253
    :cond_3
    :pswitch_3
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- using text from MMI message: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v2, v1

    move v1, v6

    .line 1255
    goto :goto_1

    .line 1290
    :cond_4
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1291
    invoke-virtual {v3, v5}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 1296
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_6

    .line 1297
    const-string v0, "MMI code has finished running."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1300
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v0, :cond_7

    .line 1302
    :try_start_1
    sget-object v0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IExtendedNetworkService;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1306
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extended NW displayMMIInitiate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1307
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1314
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 1320
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setType(I)V

    .line 1322
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1326
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    sput-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    move-object v0, v2

    goto :goto_3

    .line 1330
    :cond_6
    const-string v0, "USSD code has requested user input. Constructing input dialog."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1355
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1357
    const v1, 0x7f030012

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1360
    const v0, 0x7f080049

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1363
    new-instance v3, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/phone/PhoneUtils$2;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V

    .line 1380
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0045

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0030

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    .line 1390
    new-instance v1, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;)V

    .line 1405
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1406
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1409
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setType(I)V

    .line 1411
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1415
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 1225
    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    goto/16 :goto_4

    .line 1231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 12
    .parameter "context"
    .parameter "mmiCode"
    .parameter "buttonCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const v11, 0x7f0d002e

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayMMIInitiate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1034
    if-eqz p3, :cond_0

    .line 1035
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 1067
    :cond_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_1

    .line 1068
    const-string v5, "running USSD code, displaying indeterminate progress."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1070
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1071
    .local v2, pd:Landroid/app/ProgressDialog;
    const-string v4, ""

    .line 1073
    .local v4, textmsg:Ljava/lang/CharSequence;
    :try_start_0
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->getMmiRunningText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1079
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended NW displayMMIInitiate ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1082
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1083
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1084
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1085
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1087
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 1089
    :try_start_1
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3a98

    invoke-virtual {v5, p2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v5, v2

    .line 1116
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :goto_2
    return-object v5

    .line 1075
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    .restart local v4       #textmsg:Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1076
    .local v0, e:Landroid/os/RemoteException;
    sput-object v9, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 1077
    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 1090
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 1091
    .local v0, e:Ljava/lang/NullPointerException;
    sput-object v9, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_1

    .line 1096
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v8

    .line 1098
    .local v1, isCancelable:Z
    :goto_3
    if-nez v1, :cond_3

    .line 1099
    const-string v5, "not a USSD code, displaying status toast."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1100
    const v5, 0x7f0d002d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1101
    .local v3, text:Ljava/lang/CharSequence;
    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move-object v5, v9

    .line 1103
    goto :goto_2

    .end local v1           #isCancelable:Z
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_2
    move v1, v7

    .line 1096
    goto :goto_3

    .line 1105
    .restart local v1       #isCancelable:Z
    :cond_3
    const-string v5, "running USSD code, displaying indeterminate progress."

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1108
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1109
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1110
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1111
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1112
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1114
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    move-object v5, v2

    .line 1116
    goto :goto_2
.end method

.method static displaySSInfo(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SuppServiceNotification;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 4
    .parameter "phone"
    .parameter "context"
    .parameter "SSnoti"
    .parameter "dismissCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const v3, 0x7f0d02a2

    const/4 v2, 0x1

    .line 1127
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1128
    .local v0, text:Ljava/lang/CharSequence;
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v1, :cond_1

    .line 1130
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_0

    .line 1202
    :cond_0
    :goto_0
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1203
    return-void

    .line 1133
    :pswitch_0
    const v1, 0x7f0d02a0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1134
    goto :goto_0

    .line 1136
    :pswitch_1
    const v1, 0x7f0d02a1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1137
    goto :goto_0

    .line 1139
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1140
    goto :goto_0

    .line 1142
    :pswitch_3
    const v1, 0x7f0d02a3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1143
    goto :goto_0

    .line 1145
    :pswitch_4
    const v1, 0x7f0d02a4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1146
    goto :goto_0

    .line 1148
    :pswitch_5
    const v1, 0x7f0d02a5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1149
    goto :goto_0

    .line 1151
    :pswitch_6
    const v1, 0x7f0d02a6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1152
    goto :goto_0

    .line 1154
    :pswitch_7
    const v1, 0x7f0d02a7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1155
    goto :goto_0

    .line 1157
    :pswitch_8
    const v1, 0x7f0d02a8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1162
    :cond_1
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v1, v2, :cond_0

    .line 1164
    iget v1, p2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1167
    :pswitch_9
    const v1, 0x7f0d02a9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1168
    goto :goto_0

    .line 1170
    :pswitch_a
    const v1, 0x7f0d02aa

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1171
    goto :goto_0

    .line 1173
    :pswitch_b
    const v1, 0x7f0d02ab

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1174
    goto :goto_0

    .line 1176
    :pswitch_c
    const v1, 0x7f0d02ac

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1177
    goto :goto_0

    .line 1179
    :pswitch_d
    const v1, 0x7f0d02ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1180
    goto :goto_0

    .line 1182
    :pswitch_e
    const v1, 0x7f0d02ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1183
    goto/16 :goto_0

    .line 1185
    :pswitch_f
    const v1, 0x7f0d02af

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1186
    goto/16 :goto_0

    .line 1188
    :pswitch_10
    const v1, 0x7f0d02b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1189
    goto/16 :goto_0

    .line 1191
    :pswitch_11
    const v1, 0x7f0d02b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1192
    goto/16 :goto_0

    .line 1194
    :pswitch_12
    const v1, 0x7f0d02b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1195
    goto/16 :goto_0

    .line 1197
    :pswitch_13
    const v1, 0x7f0d02b3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1164
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method static dumpCallManager()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-string v5, "NO "

    const-string v9, "  Conn: "

    const-string v8, "  State: "

    const-string v6, "PhoneUtils"

    .line 3150
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3151
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3155
    const-string v2, "PhoneUtils"

    const-string v2, "############### dumpCallManager() ##############"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    const-string v2, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallManager: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3164
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3165
    const-string v3, " - FG call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "YES "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3167
    const-string v2, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3168
    const-string v2, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3169
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3171
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3172
    const-string v3, " - BG call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "YES "

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3174
    const-string v2, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3175
    const-string v2, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3176
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3178
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3179
    const-string v3, " - RINGING call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "YES "

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3181
    const-string v2, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3182
    const-string v0, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 3187
    if-eqz v0, :cond_0

    .line 3188
    const-string v3, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3191
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3192
    const-string v4, " - FG call: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3193
    const-string v4, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3194
    const-string v4, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3195
    const-string v3, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3197
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 3198
    const-string v4, " - BG call: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3199
    const-string v4, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3200
    const-string v4, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3201
    const-string v3, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3202
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3203
    const-string v3, " - RINGING call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3204
    const-string v3, "  State: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3205
    const-string v3, "  Conn: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3206
    const-string v0, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3165
    :cond_1
    const-string v4, "NO "

    move-object v4, v5

    goto/16 :goto_0

    .line 3172
    :cond_2
    const-string v4, "NO "

    move-object v4, v5

    goto/16 :goto_1

    .line 3179
    :cond_3
    const-string v4, "NO "

    move-object v4, v5

    goto/16 :goto_2

    .line 3210
    :cond_4
    const-string v0, "PhoneUtils"

    const-string v0, "############## END dumpCallManager() ###############"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    return-void
.end method

.method static dumpCallState()V
    .locals 9

    .prologue
    const-string v8, "PhoneUtils"

    .line 3039
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3040
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 3041
    const-string v2, "PhoneUtils"

    const-string v2, "dumpCallState():"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    const-string v2, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Call state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const-string v3, "  - FG call: "

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3045
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const-string v3, "  - BG call: "

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3046
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const-string v3, "  - RINGING call: "

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 3048
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 3049
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 3050
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 3051
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    .line 3052
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3053
    const-string v7, "  - hasRingingCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3054
    const-string v2, " hasActiveCall "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3055
    const-string v2, " hasHoldingCall "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3056
    const-string v2, " allLinesTaken "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3057
    const-string v2, "PhoneUtils"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3061
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3062
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v1, :cond_2

    .line 3063
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CDMA call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    .line 3074
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - Ringer state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    return-void

    .line 3051
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3066
    :cond_2
    const-string v1, "PhoneUtils"

    const-string v1, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v9, " isAlive "

    const-string v8, " hasConnections "

    const-string v7, "PhoneUtils"

    .line 3078
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3079
    const-string v1, "PhoneUtils"

    const-string v1, "dumpCallState():"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3085
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3086
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3087
    const-string v3, "  - FG call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3088
    const-string v3, " isAlive "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3089
    const-string v3, " isRinging "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3090
    const-string v3, " isDialing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3091
    const-string v3, " isIdle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3092
    const-string v3, " hasConnections "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3093
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3096
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3097
    const-string v3, "  - BG call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3098
    const-string v3, " isAlive "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3099
    const-string v3, " isRinging "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3100
    const-string v3, " isDialing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3101
    const-string v3, " isIdle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3102
    const-string v3, " hasConnections "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3103
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3106
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3107
    const-string v3, "  - RINGING call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3108
    const-string v3, " isAlive "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3109
    const-string v3, " isRinging "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3110
    const-string v3, " isDialing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3111
    const-string v3, " isIdle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3112
    const-string v3, " hasConnections "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3113
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    .line 3117
    :goto_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 3118
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 3119
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 3120
    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3121
    const-string v6, "  - hasRingingCall "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3122
    const-string v2, " hasActiveCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3123
    const-string v2, " hasHoldingCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3124
    const-string v2, " allLinesTaken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3125
    const-string v2, "PhoneUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3129
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v1, :cond_5

    .line 3130
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - CDMA call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    :cond_0
    :goto_4
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    .line 3141
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - Ringer state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    return-void

    :cond_1
    move v2, v6

    .line 3116
    goto/16 :goto_0

    :cond_2
    move v3, v6

    .line 3117
    goto/16 :goto_1

    :cond_3
    move v4, v6

    .line 3118
    goto/16 :goto_2

    :cond_4
    move v5, v6

    .line 3119
    goto/16 :goto_3

    .line 3133
    :cond_5
    const-string v1, "PhoneUtils"

    const-string v1, "  - CDMA device, but null cdmaPhoneCallState!"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static dumpStateForCall(Lcom/android/internal/telephony/Call;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3027
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3028
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3029
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    const-string v1, " isAlive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3031
    const-string v1, " isRinging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3032
    const-string v1, " isDialing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3033
    const-string v1, " isIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3034
    const-string v1, " hasConnections "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3035
    const-string v1, "PhoneUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    return-void
.end method

.method static explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 926
    :try_start_0
    const-string v1, "explicitCallTransfer"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 927
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 929
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "explicitCallTransfer: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2909
    if-eqz p0, :cond_1

    .line 2910
    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2911
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2916
    :goto_0
    return-object v0

    .line 2913
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2916
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3885
    .line 3888
    const/16 v0, 0x80

    new-array v0, v0, [B

    move v1, v4

    .line 3890
    :goto_0
    if-ge v1, p2, :cond_0

    .line 3892
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 3890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    move v2, v4

    .line 3894
    :goto_1
    if-ge v1, p2, :cond_1

    .line 3896
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_2

    sub-int v3, p2, v5

    if-ge v1, v3, :cond_2

    aget-byte v3, v0, v1

    if-nez v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    move v3, v5

    .line 3898
    :goto_2
    if-eqz v3, :cond_3

    .line 3906
    :cond_1
    new-array v1, v2, [B

    move v3, v4

    .line 3907
    :goto_3
    if-ge v3, v2, :cond_4

    .line 3909
    aget-byte v4, v0, v3

    aput-byte v4, v1, v3

    .line 3907
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v3, v4

    .line 3896
    goto :goto_2

    .line 3903
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 3894
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3911
    :cond_4
    const-string v0, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LiJian buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "End"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3921
    :goto_4
    return-object v0

    .line 3917
    :catch_0
    move-exception v0

    .line 3919
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3921
    const-string v0, ""

    goto :goto_4
.end method

.method static getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "PhoneUtils"

    .line 3581
    if-eqz p0, :cond_4

    .line 3583
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3584
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3585
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3592
    :goto_0
    if-eqz v0, :cond_4

    .line 3593
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3594
    if-eqz v0, :cond_4

    .line 3596
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3597
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3598
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallNumber : voicemail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    :cond_0
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3605
    :goto_1
    return-object v0

    .line 3586
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 3588
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 3590
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3604
    :cond_4
    const-string v0, "PhoneUtils"

    const-string v0, "getCallNumber : number is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1555
    const/4 v0, 0x0

    .line 1557
    if-eqz p1, :cond_0

    .line 1561
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1562
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1563
    check-cast v0, Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1564
    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1604
    :cond_0
    :goto_0
    return-object v0

    .line 1568
    :cond_1
    instance-of v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_2

    .line 1570
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1575
    :goto_1
    if-nez v0, :cond_0

    .line 1578
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallerInfo: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1582
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1595
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1596
    if-eqz v0, :cond_0

    .line 1597
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1598
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    .line 1573
    :cond_2
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method

.method static getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "PhoneUtils"

    .line 3533
    .line 3534
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3535
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3536
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3539
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    .line 3545
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3546
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3547
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    .line 3549
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3550
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3552
    if-nez v1, :cond_3

    .line 3553
    const-string v0, "PhoneUtils"

    const-string v0, "getCallerName : callerInfo is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 3578
    :goto_1
    return-object v0

    .line 3541
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 3542
    goto :goto_0

    .line 3557
    :cond_3
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3558
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3577
    :goto_2
    const-string v1, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3559
    :cond_4
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3560
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 3562
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3564
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v2, :cond_6

    .line 3566
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2

    .line 3568
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3569
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v2, :cond_7

    .line 3570
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3571
    :cond_7
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v0, v2, :cond_8

    .line 3572
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object v0, v4

    goto :goto_2
.end method

.method static getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3610
    if-nez p0, :cond_1

    move-object v0, v3

    .line 3637
    :cond_0
    :goto_0
    return-object v0

    .line 3612
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3613
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3614
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3615
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 3617
    if-nez v2, :cond_5

    .line 3618
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3619
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3620
    if-nez v1, :cond_2

    .line 3621
    const-string v0, "PhoneUtils"

    const-string v1, "getCallerNumber : callerInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 3622
    goto :goto_0

    :cond_2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 3625
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 3626
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_3

    .line 3628
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 3630
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d0008

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3631
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_4

    .line 3632
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3633
    :cond_4
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_0

    .line 3634
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCompactNameFromCallerInfo: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2075
    const/4 v0, 0x0

    .line 2076
    if-eqz p0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2080
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2088
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2092
    :cond_1
    if-eqz p0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_4

    .line 2093
    const v0, 0x7f0d0009

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2100
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompactNameFromCallerInfo: compactName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2101
    return-object v0

    .line 2084
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 2094
    :cond_4
    if-eqz p0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v0, v1, :cond_5

    .line 2095
    const v0, 0x7f0d000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2097
    :cond_5
    const v0, 0x7f0d0008

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static getMute()Z
    .locals 3

    .prologue
    .line 2459
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2461
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2463
    if-eqz v1, :cond_0

    .line 2464
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2466
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 2468
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method static getNoiseSuppressionFeature(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wbamr_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2386
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eq v0, v4, :cond_1

    :cond_0
    const-string v0, "GT-I9100"

    const-string v1, "GT-I9103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    .line 2391
    :goto_0
    return v0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1513
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 1514
    const/4 v3, 0x0

    .line 1535
    :goto_0
    return-object v3

    .line 1516
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1520
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "sip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1521
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1527
    :cond_1
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    .local v0, number:Ljava/lang/String;
    const-string v3, "voicemail"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1533
    :cond_2
    new-instance v3, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v3

    :cond_3
    move-object v3, v0

    .line 1535
    goto :goto_0
.end method

.method static getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3927
    .line 3928
    const-string v4, ""

    .line 3929
    const-string v4, ""

    .line 3930
    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 3931
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 3932
    const/16 v6, 0x20

    new-array v6, v6, [B

    .line 3933
    const/4 v7, 0x0

    .line 3943
    const/4 v8, 0x0

    .line 3945
    sget v9, Lcom/android/phone/PhoneUtils;->LANGUAGE_ENGLISH:I

    .line 3946
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "number_region_activation_preference"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 3949
    if-nez v9, :cond_1

    .line 3951
    const-string p0, "PhoneUtils"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LiJian number_region_activation_preference: "

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    const/16 p0, 0x0

    .line 4207
    :cond_0
    :goto_0
    return-object p0

    .line 3956
    :cond_1
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "context.getResources().getConfiguration().locale: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Locale.CHINA: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v10, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 3963
    sget p0, Lcom/android/phone/PhoneUtils;->LANGUAGE_CHINA:I

    .line 3964
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Locale.CHINA currLanguage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 3980
    const/4 v10, 0x0

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_7

    .line 3983
    const/4 v10, 0x1

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x33

    if-ge v10, v11, :cond_5

    .line 3985
    const/4 v10, 0x3

    if-lt v9, v10, :cond_4

    .line 3986
    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3996
    :goto_2
    const/4 v10, 0x0

    .line 4007
    :goto_3
    :try_start_0
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/phone/PhoneUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4009
    new-instance v11, Ljava/io/RandomAccessFile;

    sget-object v12, Lcom/android/phone/PhoneUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    const-string v13, "r"

    invoke-direct {v11, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v11

    .line 4014
    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x4

    :try_start_1
    invoke-virtual {v8, v5, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4015
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    .line 4016
    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v8, v6, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4017
    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-16LE"

    invoke-direct {v11, v6, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4019
    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v8, v6, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4020
    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-16LE"

    invoke-direct {v11, v6, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4022
    const/4 v6, 0x0

    const/4 v11, 0x4

    invoke-virtual {v8, v5, v6, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4023
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    move-result-wide v11

    .line 4024
    const/4 v6, 0x0

    const/4 v13, 0x4

    invoke-virtual {v8, v5, v6, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4025
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    move-result-wide v13

    .line 4026
    const/4 v6, 0x0

    const/4 v15, 0x4

    invoke-virtual {v8, v5, v6, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4027
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    move-result-wide v15

    .line 4028
    const/4 v6, 0x0

    const/16 v17, 0x4

    move-object v0, v8

    move-object v1, v5

    move v2, v6

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4029
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->readUnsignedInt([B)J

    move-result-wide v5

    .line 4051
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v17

    .line 4052
    sget v19, Lcom/android/phone/PhoneUtils;->titleSeekCount:I

    mul-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-object v0, v8

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4055
    sget v17, Lcom/android/phone/PhoneUtils;->provinceSize:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v17, v17, v11

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 4056
    const/16 v18, 0x0

    sget v19, Lcom/android/phone/PhoneUtils;->provinceSize:I

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v11, v11, v19

    long-to-int v11, v11

    move-object v0, v8

    move-object/from16 v1, v17

    move/from16 v2, v18

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4059
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 4060
    if-nez v10, :cond_f

    .line 4062
    sget p1, Lcom/android/phone/PhoneUtils;->telSize:I

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide v4, v0

    mul-long/2addr v4, v13

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 p1, v0

    move/from16 v0, p1

    new-array v0, v0, [B

    move-object/from16 p1, v0

    .line 4063
    const/4 v4, 0x0

    sget v5, Lcom/android/phone/PhoneUtils;->telSize:I

    int-to-long v5, v5

    mul-long/2addr v5, v13

    long-to-int v5, v5

    move-object v0, v8

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4066
    long-to-int v4, v13

    move-object/from16 v0, p1

    move v1, v9

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->teleBinarySearch([BII)I

    move-result v4

    .line 4068
    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 4070
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4071
    const/16 p0, 0x0

    .line 4189
    if-eqz v8, :cond_0

    .line 4190
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4191
    :catch_0
    move-exception p1

    goto/16 :goto_0

    .line 3966
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 p0, v0

    sget-object v9, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v9, 0x1

    move/from16 v0, p0

    move v1, v9

    if-ne v0, v1, :cond_3

    .line 3969
    sget p0, Lcom/android/phone/PhoneUtils;->LANGUAGE_KOREA:I

    .line 3970
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Locale.CHINA currLanguage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3974
    :cond_3
    sget p0, Lcom/android/phone/PhoneUtils;->LANGUAGE_ENGLISH:I

    .line 3975
    const-string v9, "PhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Locale.CHINA currLanguage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3988
    :cond_4
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 3991
    :cond_5
    const/4 v10, 0x4

    if-lt v9, v10, :cond_6

    .line 3992
    const/4 v9, 0x0

    const/4 v10, 0x4

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 3994
    :cond_6
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 3999
    :cond_7
    const/4 v10, 0x7

    if-lt v9, v10, :cond_8

    .line 4000
    const/4 v9, 0x0

    const/4 v10, 0x7

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 4003
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 4002
    :cond_8
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 4011
    :cond_9
    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    sget-object v12, Lcom/android/phone/PhoneUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v13, "r"

    invoke-direct {v11, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v11

    goto/16 :goto_4

    .line 4075
    :cond_a
    :try_start_4
    sget v5, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v5, v4

    aget-byte v5, p1, v5

    .line 4077
    if-gez v5, :cond_b

    .line 4079
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4080
    const/16 p0, 0x0

    .line 4189
    if-eqz v8, :cond_0

    .line 4190
    :try_start_5
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 4191
    :catch_1
    move-exception p1

    goto/16 :goto_0

    .line 4082
    :cond_b
    :try_start_6
    sget v6, Lcom/android/phone/PhoneUtils;->LANGUAGE_CHINA:I

    move/from16 v0, p0

    move v1, v6

    if-ne v0, v1, :cond_d

    .line 4084
    if-eqz v5, :cond_1c

    .line 4086
    sget p0, Lcom/android/phone/PhoneUtils;->provinceSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int p0, p0, v5

    const/16 v5, 0x20

    move-object/from16 v0, v17

    move/from16 v1, p0

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p0

    .line 4089
    :goto_5
    sget v5, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x20

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object p1

    move-object/from16 v21, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v21

    .line 4189
    :goto_6
    if-eqz v8, :cond_c

    .line 4190
    :try_start_7
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4199
    :cond_c
    :goto_7
    const-string v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strProvince: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "strCity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 4202
    if-eqz p1, :cond_16

    if-eqz p0, :cond_16

    .line 4203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4091
    :cond_d
    :try_start_8
    sget v6, Lcom/android/phone/PhoneUtils;->LANGUAGE_KOREA:I

    move/from16 v0, p0

    move v1, v6

    if-ne v0, v1, :cond_e

    .line 4093
    if-eqz v5, :cond_1b

    .line 4095
    sget p0, Lcom/android/phone/PhoneUtils;->provinceSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int p0, p0, v5

    add-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, 0x20

    const/16 v5, 0x20

    move-object/from16 v0, v17

    move/from16 v1, p0

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p0

    .line 4098
    :goto_8
    sget v5, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x20

    add-int/lit8 v4, v4, 0x40

    const/16 v5, 0x20

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v21, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v21

    goto/16 :goto_6

    .line 4102
    :cond_e
    if-eqz v5, :cond_1a

    .line 4104
    sget p0, Lcom/android/phone/PhoneUtils;->provinceSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int p0, p0, v5

    add-int/lit8 p0, p0, 0x20

    const/16 v5, 0x20

    move-object/from16 v0, v17

    move/from16 v1, p0

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p0

    .line 4107
    :goto_9
    sget v5, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x20

    const/16 v5, 0x40

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v21, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v21

    goto/16 :goto_6

    .line 4113
    :cond_f
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 4114
    sget v12, Lcom/android/phone/PhoneUtils;->telSize:I

    move v0, v12

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v12, v18, v13

    add-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4116
    sget v10, Lcom/android/phone/PhoneUtils;->mobileSize:I

    int-to-long v10, v10

    mul-long/2addr v10, v15

    long-to-int v10, v10

    new-array v10, v10, [B

    .line 4117
    const/4 v11, 0x0

    sget v12, Lcom/android/phone/PhoneUtils;->mobileSize:I

    int-to-long v12, v12

    mul-long/2addr v12, v15

    long-to-int v12, v12

    invoke-virtual {v8, v10, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4121
    sget v11, Lcom/android/phone/PhoneUtils;->headerSize:I

    int-to-long v11, v11

    mul-long/2addr v11, v5

    long-to-int v11, v11

    new-array v11, v11, [B

    .line 4122
    const/4 v12, 0x0

    sget v13, Lcom/android/phone/PhoneUtils;->headerSize:I

    int-to-long v13, v13

    mul-long/2addr v13, v5

    long-to-int v13, v13

    invoke-virtual {v8, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4124
    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object/from16 v0, p1

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4125
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 4126
    long-to-int v5, v5

    move-object v0, v11

    move/from16 v1, p1

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->mobileHeaderSearch([BII)I

    move-result p1

    .line 4128
    if-gez p1, :cond_10

    .line 4130
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4131
    const/16 p0, 0x0

    .line 4189
    if-eqz v8, :cond_0

    .line 4190
    :try_start_9
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 4191
    :catch_2
    move-exception p1

    goto/16 :goto_0

    .line 4133
    :cond_10
    const/16 v5, 0x4e20

    :try_start_a
    new-array v5, v5, [B

    .line 4135
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    .line 4136
    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x2710

    move/from16 p1, v0

    mul-int/lit8 p1, p1, 0x2

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide v13, v0

    add-long/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4138
    const/16 p1, 0x0

    const/16 v6, 0x4e20

    move-object v0, v8

    move-object v1, v5

    move/from16 v2, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4139
    move v0, v9

    rem-int/lit16 v0, v0, 0x2710

    move/from16 p1, v0

    .line 4140
    const/4 v6, 0x0

    mul-int/lit8 v9, p1, 0x2

    aget-byte v9, v5, v9

    aput-byte v9, v4, v6

    .line 4141
    const/4 v6, 0x1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v5, p1

    aput-byte p1, v4, v6

    .line 4142
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->readUnsignedShort([B)I

    move-result p1

    .line 4143
    if-gtz p1, :cond_11

    .line 4145
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 4146
    const/16 p0, 0x0

    .line 4189
    if-eqz v8, :cond_0

    .line 4190
    :try_start_b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    .line 4191
    :catch_3
    move-exception p1

    goto/16 :goto_0

    .line 4149
    :cond_11
    :try_start_c
    sget v4, Lcom/android/phone/PhoneUtils;->mobileSize:I

    const/4 v5, 0x1

    sub-int v5, p1, v5

    mul-int/2addr v4, v5

    aget-byte v4, v10, v4

    .line 4151
    if-gez v4, :cond_12

    .line 4153
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 4154
    const/16 p0, 0x0

    .line 4189
    if-eqz v8, :cond_0

    .line 4190
    :try_start_d
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    .line 4191
    :catch_4
    move-exception p1

    goto/16 :goto_0

    .line 4156
    :cond_12
    :try_start_e
    sget v5, Lcom/android/phone/PhoneUtils;->LANGUAGE_CHINA:I

    move/from16 v0, p0

    move v1, v5

    if-ne v0, v1, :cond_13

    .line 4158
    if-eqz v4, :cond_19

    .line 4160
    sget p0, Lcom/android/phone/PhoneUtils;->provinceSize:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int p0, p0, v4

    const/16 v4, 0x20

    move-object/from16 v0, v17

    move/from16 v1, p0

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p0

    .line 4163
    :goto_a
    sget v4, Lcom/android/phone/PhoneUtils;->mobileSize:I

    const/4 v5, 0x1

    sub-int p1, p1, v5

    mul-int p1, p1, v4

    add-int/lit8 p1, p1, 0x1

    const/16 v4, 0x20

    move-object v0, v10

    move/from16 v1, p1

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v21, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v21

    goto/16 :goto_6

    .line 4165
    :cond_13
    sget v5, Lcom/android/phone/PhoneUtils;->LANGUAGE_KOREA:I

    move/from16 v0, p0

    move v1, v5

    if-ne v0, v1, :cond_14

    .line 4167
    if-eqz v4, :cond_18

    .line 4169
    sget p0, Lcom/android/phone/PhoneUtils;->provinceSize:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int p0, p0, v4

    add-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, 0x20

    const/16 v4, 0x20

    move-object/from16 v0, v17

    move/from16 v1, p0

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p0

    .line 4172
    :goto_b
    sget v4, Lcom/android/phone/PhoneUtils;->mobileSize:I

    const/4 v5, 0x1

    sub-int p1, p1, v5

    mul-int p1, p1, v4

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x20

    add-int/lit8 p1, p1, 0x40

    const/16 v4, 0x20

    move-object v0, v10

    move/from16 v1, p1

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v21, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v21

    goto/16 :goto_6

    .line 4176
    :cond_14
    if-eqz v4, :cond_17

    .line 4178
    sget p0, Lcom/android/phone/PhoneUtils;->provinceSize:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int p0, p0, v4

    add-int/lit8 p0, p0, 0x20

    const/16 v4, 0x20

    move-object/from16 v0, v17

    move/from16 v1, p0

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object p0

    .line 4181
    :goto_c
    sget v4, Lcom/android/phone/PhoneUtils;->mobileSize:I

    const/4 v5, 0x1

    sub-int p1, p1, v5

    mul-int p1, p1, v4

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x20

    const/16 v4, 0x40

    move-object v0, v10

    move/from16 v1, p1

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object p1

    move-object/from16 v21, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v21

    goto/16 :goto_6

    .line 4187
    :catchall_0
    move-exception p0

    move-object/from16 p1, v8

    .line 4189
    :goto_d
    if-eqz p1, :cond_15

    .line 4190
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 4194
    :cond_15
    :goto_e
    throw p0

    .line 4204
    :cond_16
    if-nez p0, :cond_0

    .line 4207
    const-string p0, ""

    goto/16 :goto_0

    .line 4191
    :catch_5
    move-exception v4

    goto/16 :goto_7

    :catch_6
    move-exception p1

    goto :goto_e

    .line 4187
    :catchall_1
    move-exception p0

    move-object/from16 p1, v8

    goto :goto_d

    :cond_17
    move-object/from16 p0, v7

    goto :goto_c

    :cond_18
    move-object/from16 p0, v7

    goto :goto_b

    :cond_19
    move-object/from16 p0, v7

    goto/16 :goto_a

    :cond_1a
    move-object/from16 p0, v7

    goto/16 :goto_9

    :cond_1b
    move-object/from16 p0, v7

    goto/16 :goto_8

    :cond_1c
    move-object/from16 p0, v7

    goto/16 :goto_5
.end method

.method static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 2897
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2898
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2881
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2882
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2885
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2887
    :goto_0
    return-object v0

    .line 2886
    :catch_0
    move-exception v0

    .line 2887
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2862
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2863
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2866
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2868
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2870
    :goto_0
    return-object v0

    .line 2869
    :catch_0
    move-exception v0

    .line 2870
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3003
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Phone;

    .line 3004
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 3005
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    .line 3006
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- pickPhoneBasedOnNumber:found SipPhone! obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, p0

    .line 3014
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHeadsetHook()..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2524
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 2596
    :goto_0
    return v0

    .line 2536
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    .line 2537
    :goto_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    .line 2538
    :goto_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    .line 2540
    :goto_3
    if-eqz v0, :cond_8

    .line 2543
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2544
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 2545
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    :goto_4
    move v0, v4

    .line 2596
    goto :goto_0

    :cond_1
    move v0, v3

    .line 2536
    goto :goto_1

    :cond_2
    move v1, v3

    .line 2537
    goto :goto_2

    :cond_3
    move v2, v3

    .line 2538
    goto :goto_3

    .line 2546
    :cond_4
    if-eq v0, v4, :cond_5

    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    .line 2548
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 2549
    const-string v0, "handleHeadsetHook: ringing (both lines in use) ==> answer!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2550
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 2552
    :cond_6
    const-string v0, "handleHeadsetHook: ringing ==> answer!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2553
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_4

    .line 2557
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2560
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_4
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 548
    if-eqz p0, :cond_0

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "call"

    .prologue
    .line 525
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 527
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    .line 533
    :goto_0
    const/4 v2, 0x1

    .line 538
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :goto_1
    return v2

    .line 531
    .restart local v0       #cm:Lcom/android/internal/telephony/CallManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    .end local v0           #cm:Lcom/android/internal/telephony/CallManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 535
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call hangup: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, hungup:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 416
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 417
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 419
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 420
    const-string v4, "HANGUP ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 421
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 430
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hungup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 432
    return v2

    .line 422
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 423
    const-string v4, "HANGUP foreground call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 424
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 426
    const-string v4, "HANGUP background call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 427
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "foreground"

    .prologue
    .line 480
    const-string v0, "hangup active call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 481
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "background"

    .prologue
    .line 485
    const-string v0, "hangup holding call"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 486
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "phone"

    .prologue
    .line 495
    const/4 v2, 0x0

    .line 496
    .local v2, hungUpRingingCall:Z
    const/4 v1, 0x0

    .line 497
    .local v1, hungUpFgCall:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 498
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 501
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    const-string v4, "endCallInternal: Hang up Ringing Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 503
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 507
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 508
    const-string v4, "endCallInternal: Hang up Foreground Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 509
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 512
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 8
    .parameter "ringing"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "No Ringing call to hangup"

    const-string v4, "hangup ringing call"

    .line 436
    const-string v3, "hangup ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 442
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 447
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 448
    const-string v3, "hangup ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 449
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 472
    :goto_0
    return v3

    .line 450
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 451
    const-string v3, "hangup Call waiting call"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 453
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendCdmaCallWaitingReject()V

    move v3, v6

    .line 454
    goto :goto_0

    .line 459
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_1
    const-string v3, "No Ringing call to hangup"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v3, v5

    .line 460
    goto :goto_0

    .line 462
    .end local v2           #state:Lcom/android/internal/telephony/Call$State;
    :cond_2
    if-eq v1, v6, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 466
    :cond_3
    const-string v3, "hangup ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 468
    .restart local v2       #state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_5

    .line 469
    :cond_4
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_0

    .line 471
    :cond_5
    const-string v3, "No Ringing call to hangup"

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v3, v5

    .line 472
    goto :goto_0

    .line 475
    .end local v2           #state:Lcom/android/internal/telephony/Call$State;
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    .line 2622
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2623
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2624
    const/4 v2, 0x1

    .line 2627
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 2607
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

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

.method static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2825
    if-nez p0, :cond_0

    move v0, v2

    .line 2831
    :goto_0
    return v0

    .line 2828
    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2829
    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2831
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "cm"

    .prologue
    const/4 v4, 0x1

    .line 3669
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3670
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3671
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 3673
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    .line 3683
    :goto_0
    return v3

    .line 3676
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    .line 3677
    goto :goto_0

    .line 3679
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    .line 3680
    goto :goto_0

    .line 3683
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static hideMmiDialog()V
    .locals 2

    .prologue
    .line 1429
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    const-string v0, "PhoneUtils"

    const-string v1, "Hide Mmi Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 1432
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 1434
    :cond_0
    return-void
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .parameter "cm"

    .prologue
    .line 290
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 295
    :cond_0
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ussd.IExtendedNetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 300
    const-string v1, "Extended NW bindService IExtendedNetworkService"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method static isAnyKeyMode(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "anykey_mode"

    .line 3336
    const-string v0, "anykey_mode"

    .line 3338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anykey_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3339
    if-ge v0, v3, :cond_0

    move v0, v2

    .line 3343
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method static isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "reject_match"

    const-string v4, "autoreject_mode"

    .line 3216
    const-string v0, "com.sec.android.app.callsetting.allcalls"

    .line 3217
    const-string v0, "reject_num"

    .line 3220
    const-string v0, "unknown_mode"

    .line 3221
    const-string v0, "reject_number"

    .line 3222
    const-string v0, "reject_checked"

    .line 3223
    const-string v0, "reject_match"

    .line 3231
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3232
    const-string v0, "autoreject_mode"

    .line 3242
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoreject_mode"

    invoke-static {v0, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoRejectCall mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3246
    packed-switch v0, :pswitch_data_0

    move v0, v8

    .line 3329
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoRejectCall : Is reject number? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3330
    return v0

    :pswitch_0
    move v0, v8

    .line 3249
    goto :goto_0

    :pswitch_1
    move v0, v7

    .line 3253
    goto :goto_0

    .line 3257
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unknown_mode"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3260
    if-lez v3, :cond_1

    .line 3262
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v0, v3, :cond_0

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v7

    .line 3265
    goto :goto_0

    .line 3269
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 3270
    if-nez v6, :cond_2

    .line 3271
    const-string v0, "isAutoRejectCall : phonenumber is null "

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v8

    .line 3273
    goto :goto_0

    .line 3277
    :cond_2
    const-string v3, "reject_checked=1"

    .line 3279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3281
    if-nez v0, :cond_3

    .line 3282
    const-string v0, "isAutoRejectCall : cursor is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v8

    .line 3284
    goto :goto_0

    .line 3286
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v8

    .line 3288
    :cond_4
    const-string v2, "reject_number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3290
    const-string v3, "reject_match"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3292
    packed-switch v3, :pswitch_data_1

    .line 3319
    :cond_5
    :goto_1
    if-eq v1, v7, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3321
    :cond_6
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 3323
    goto/16 :goto_0

    .line 3295
    :pswitch_3
    invoke-static {v2, v6}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectCall : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v1, v7

    .line 3297
    goto :goto_1

    .line 3301
    :pswitch_4
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectCall : MATCH_STARTS_WITH, rejectNumber : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v1, v7

    .line 3303
    goto :goto_1

    .line 3307
    :pswitch_5
    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectCall : MATCH_ENDS_WITH, rejectNumber : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v1, v7

    .line 3309
    goto :goto_1

    .line 3313
    :pswitch_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoRejectCall : MATCH_INCLUDE, rejectNumber : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v1, v7

    .line 3315
    goto/16 :goto_1

    :cond_7
    move v1, v8

    goto :goto_2

    .line 3246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3292
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "call"

    .prologue
    const/4 v5, 0x1

    .line 2126
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2127
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2128
    .local v2, phoneType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 2129
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 2131
    .local v3, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_1

    move v4, v5

    .line 2143
    .end local v3           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :goto_0
    return v4

    .line 2138
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2139
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    move v4, v5

    .line 2140
    goto :goto_0

    .line 2143
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static isDisconnecting(Lcom/android/internal/telephony/CallManager;)Z
    .locals 4
    .parameter "cm"

    .prologue
    .line 3660
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3661
    .local v2, ringCall:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3662
    .local v1, fgCall:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3663
    .local v0, bgCall:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isMultiCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 8
    .parameter "cm"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2167
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2168
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 2170
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2171
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    .line 2173
    .local v4, state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_0

    move v5, v7

    .line 2183
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v4           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :goto_0
    return v5

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v4       #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_0
    move v5, v6

    .line 2176
    goto :goto_0

    .line 2179
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v4           #state:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2180
    .local v2, foreCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2181
    .local v1, backCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    .line 2182
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    .line 2183
    goto :goto_0
.end method

.method static isNoiseSuppressionOn(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2324
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2325
    const/4 v0, 0x0

    .line 2328
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabled:Z

    goto :goto_0
.end method

.method static isNoiseSuppressionWBMode(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2366
    .line 2367
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2376
    :goto_0
    return v0

    .line 2371
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->AMR_codec:Lcom/android/phone/PhoneUtils$AMRState;

    sget-object v1, Lcom/android/phone/PhoneUtils$AMRState;->WB:Lcom/android/phone/PhoneUtils$AMRState;

    if-ne v0, v1, :cond_1

    .line 2372
    const/4 v0, 0x1

    .line 2375
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNoiseSuppressionWBMode, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter

    .prologue
    .line 2967
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2973
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2975
    if-eqz v0, :cond_0

    .line 2976
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2979
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 3018
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRoutableViaGateway(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 2931
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2939
    :goto_0
    return v0

    .line 2934
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2935
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2936
    goto :goto_0

    .line 2938
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2939
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 2272
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 2273
    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method static isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 2396
    const/4 v0, 0x0

    .line 2402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportedNoiseReductionInWBMode, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2403
    return v0
.end method

.method static isWebExEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.cisco.webex.meetings"

    .line 3768
    .line 3769
    const-string v0, "com.cisco.webex.meetings"

    .line 3771
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3772
    if-eqz v0, :cond_0

    .line 3773
    const-string v1, "com.cisco.webex.meetings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 3776
    :cond_0
    const-string v0, "com.cisco.webex.meetings"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3786
    const-string v1, "share"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3788
    const-string v1, "SignInFlag"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWebExEnabled : bSignInOrNot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .line 3778
    :catch_0
    move-exception v0

    .line 3779
    const-string v0, "isWebExEnabled : NameNotFoundException"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v4

    .line 3780
    goto :goto_0

    .line 3781
    :catch_1
    move-exception v0

    .line 3782
    const-string v1, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 3783
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3145
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    return-void
.end method

.method static mergeCalls()V
    .locals 1

    .prologue
    .line 976
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 977
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    const-string v4, "mergeCalls"

    .line 980
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 981
    .local v2, phoneType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 982
    const-string v3, "mergeCalls"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 983
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 984
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_0

    .line 987
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 994
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 996
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1008
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    :try_start_0
    const-string v3, "mergeCalls"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallManager;->conference(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1005
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeCalls: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static mobileHeaderSearch([BII)I
    .locals 5
    .parameter "header"
    .parameter "iNum"
    .parameter "count"

    .prologue
    .line 3868
    const/4 v2, 0x0

    .line 3869
    .local v2, i:I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 3870
    .local v1, buffer2:[B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 3872
    const/4 v3, 0x0

    sget v4, Lcom/android/phone/PhoneUtils;->headerSize:I

    mul-int/2addr v4, v2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 3873
    const/4 v3, 0x1

    sget v4, Lcom/android/phone/PhoneUtils;->headerSize:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 3874
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->readUnsignedShort([B)I

    move-result v0

    .line 3875
    .local v0, areaCode:I
    if-ne v0, p1, :cond_0

    move v3, v2

    .line 3880
    .end local v0           #areaCode:I
    :goto_1
    return v3

    .line 3870
    .restart local v0       #areaCode:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3880
    .end local v0           #areaCode:I
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0d0008

    .line 2775
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, p2

    .line 2811
    :goto_0
    return-object v0

    .line 2777
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ci "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2783
    const v0, 0x7f0d01e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v0, :cond_6

    .line 2785
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2786
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iput v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2794
    :goto_1
    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v1, p3, :cond_4

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p3, v1, :cond_4

    .line 2797
    :cond_2
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v1

    .line 2798
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 2800
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_5

    .line 2801
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2805
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecialCnap: number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; presentation now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2807
    iput v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2810
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2802
    :cond_5
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v1, v2, :cond_3

    .line 2803
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, p2

    goto :goto_1
.end method

.method static okToAddCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 12
    .parameter "cm"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2697
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 2700
    .local v6, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v10

    .line 2729
    :goto_0
    return v8

    .line 2704
    :cond_0
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2705
    .local v7, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 2706
    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 2710
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2711
    .local v1, app:Lcom/android/phone/PhoneApp;
    iget-object v8, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_1

    move v8, v11

    goto :goto_0

    :cond_1
    move v8, v10

    goto :goto_0

    .line 2717
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    if-eq v7, v11, :cond_3

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    .line 2724
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    .line 2725
    .local v5, hasRingingCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    .line 2726
    .local v3, hasActiveCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .line 2727
    .local v4, hasHoldingCall:Z
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    move v0, v11

    .line 2729
    .local v0, allLinesTaken:Z
    :goto_1
    if-nez v5, :cond_6

    if-nez v0, :cond_6

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v8, :cond_4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v8, :cond_4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_6

    :cond_4
    move v8, v11

    goto :goto_0

    .end local v0           #allLinesTaken:Z
    :cond_5
    move v0, v10

    .line 2727
    goto :goto_1

    .restart local v0       #allLinesTaken:Z
    :cond_6
    move v8, v10

    .line 2729
    goto :goto_0

    .line 2735
    .end local v0           #allLinesTaken:Z
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    :cond_7
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2670
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2671
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2673
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2674
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 2686
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_0
    move v2, v4

    .line 2674
    goto :goto_0

    .line 2686
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2639
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2640
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2643
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2644
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 2657
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v2

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_0
    move v2, v5

    .line 2644
    goto :goto_0

    .line 2650
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 2657
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_0

    .line 2661
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickPhoneBasedOnNumber: scheme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sipUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2995
    if-eqz p3, :cond_0

    .line 2996
    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2997
    if-eqz v0, :cond_0

    .line 2999
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"

    .prologue
    .line 630
    const/4 v6, 0x0

    .line 632
    .local v6, status:I
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "placeCall: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 635
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===> phone.dial() returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 637
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 640
    .local v5, phoneType:I
    if-nez v1, :cond_2

    .line 641
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dialed MMI code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 643
    const/4 v6, 0x1

    .line 645
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    .line 647
    :try_start_1
    sget-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V

    .line 648
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extended NW bindService setUssdString ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 695
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v5           #phoneType:I
    :cond_0
    :goto_0
    return v6

    .line 649
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 650
    .local v3, e:Landroid/os/RemoteException;
    const/4 v8, 0x0

    :try_start_2
    sput-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 690
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v5           #phoneType:I
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 691
    .local v4, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "PhoneUtils"

    const-string v9, "Exception from phone.dial()"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    const/4 v6, 0x2

    goto :goto_0

    .line 654
    .end local v4           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #cn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #phoneType:I
    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    .line 657
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 659
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 660
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 668
    :cond_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v2, "content"

    .line 669
    .local v2, content:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 670
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 671
    .local v7, userDataObject:Ljava/lang/Object;
    if-nez v7, :cond_5

    .line 672
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 685
    .end local v7           #userDataObject:Ljava/lang/Object;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 688
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->activateSpeakerIfDocked(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 677
    .restart local v7       #userDataObject:Ljava/lang/Object;
    :cond_5
    instance-of v8, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_6

    .line 678
    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .end local v7           #userDataObject:Ljava/lang/Object;
    iput-object p2, v7, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_1

    .line 680
    .restart local v7       #userDataObject:Ljava/lang/Object;
    :cond_6
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v7           #userDataObject:Ljava/lang/Object;
    iget-object v8, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v8, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method static placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x2

    const-string v4, "PhoneUtils"

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCallVia: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' GW:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 821
    if-eqz p4, :cond_0

    const-string v0, "tel"

    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    :cond_0
    const-string v0, "PhoneUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported URL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 884
    :goto_0
    return v0

    .line 831
    :cond_1
    invoke-virtual {p4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 834
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 840
    :goto_1
    if-nez v0, :cond_2

    .line 841
    const-string v0, "PhoneUtils"

    const-string v0, "Got null connection."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 842
    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    const-string v1, "PhoneUtils"

    const-string v1, "Exception dialing gateway"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 837
    goto :goto_1

    .line 845
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 846
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    .line 848
    :goto_2
    if-eqz v2, :cond_3

    .line 849
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V

    .line 853
    :cond_3
    if-eqz v2, :cond_8

    .line 854
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 856
    :goto_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    const-string v2, "content"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 866
    invoke-static {p0, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 872
    :goto_4
    if-nez v2, :cond_4

    .line 873
    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 876
    :cond_4
    if-eqz v2, :cond_6

    .line 877
    iput-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 878
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 883
    :goto_5
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    move v0, v5

    .line 884
    goto :goto_0

    :cond_5
    move v2, v5

    .line 846
    goto :goto_2

    .line 880
    :cond_6
    const-string v0, "PhoneUtils"

    const-string v0, "Got null info. Fail to udate the connection Callerinfo"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    move-object v2, v6

    goto :goto_4

    :cond_8
    move-object v1, p2

    goto :goto_3
.end method

.method static playCallConnectTone(Landroid/content/Context;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "call_conn_tone"

    .line 3399
    const-string v0, "call_conn_tone"

    .line 3400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_conn_tone"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3401
    if-ge v0, v2, :cond_0

    .line 3403
    const-string v0, "call connect tone is unchecked"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move v0, v3

    .line 3423
    :goto_0
    return v0

    .line 3406
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 3408
    goto :goto_0

    .line 3419
    :cond_1
    const/high16 v0, 0x7f06

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    .line 3420
    sget-object v0, Lcom/android/phone/PhoneUtils;->mCallConnectedToneHandle:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 3421
    const-string v0, "playCallConnectTone : excuted"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_2
    move v0, v2

    .line 3423
    goto :goto_0
.end method

.method static playCallEndTone(Landroid/content/Context;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v3, "call_end_tone"

    .line 3355
    const-string v0, "call_end_tone"

    .line 3356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_end_tone"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3357
    if-ge v0, v2, :cond_0

    .line 3359
    const-string v0, "call disconnect tone is unchecked"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3360
    const/4 v0, 0x0

    .line 3395
    :goto_0
    return v0

    .line 3384
    :cond_0
    const v0, 0x7f060001

    new-instance v1, Lcom/android/phone/PhoneUtils$5;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$5;-><init>()V

    invoke-static {p0, v0, v1, p1}, Lcom/android/phone/PhoneUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    .line 3392
    sget-object v0, Lcom/android/phone/PhoneUtils;->mCallDisconnectedToneHandle:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3393
    const-string v0, "playCallEndTone : excuted"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :cond_1
    move v0, v2

    .line 3395
    goto :goto_0
.end method

.method static playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;I)Landroid/media/MediaPlayer;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const-string v8, "create failed:"

    const-string v7, "PhoneUtils"

    .line 3445
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 3446
    if-eqz v0, :cond_2

    .line 3448
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 3449
    if-nez v6, :cond_0

    move-object v0, v9

    .line 3513
    :goto_0
    return-object v0

    .line 3450
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 3451
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 3452
    if-nez p3, :cond_3

    .line 3453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3467
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 3469
    if-nez p2, :cond_4

    .line 3470
    new-instance v1, Lcom/android/phone/PhoneUtils$6;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$6;-><init>()V

    .line 3488
    :goto_2
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3491
    new-instance v1, Lcom/android/phone/PhoneUtils$7;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3500
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3502
    :catch_0
    move-exception v0

    .line 3503
    const-string v1, "PhoneUtils"

    const-string v1, "create failed:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    move-object v0, v9

    .line 3513
    goto :goto_0

    .line 3454
    :cond_3
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 3455
    const/16 v1, 0xb

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 3505
    :catch_1
    move-exception v0

    .line 3506
    const-string v1, "PhoneUtils"

    const-string v1, "create failed:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3508
    :catch_2
    move-exception v0

    .line 3509
    const-string v1, "PhoneUtils"

    const-string v1, "create failed:"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    move-object v1, p2

    goto :goto_2
.end method

.method public static readUnsignedInt([B)J
    .locals 11
    .parameter "bytes"

    .prologue
    .line 3833
    const/4 v8, 0x0

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 3834
    .local v0, b0:J
    const/4 v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    .line 3835
    .local v2, b1:J
    const/4 v8, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    .line 3836
    .local v4, b2:J
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    .line 3837
    .local v6, b3:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public static readUnsignedShort([B)I
    .locals 3
    .parameter "bytes"

    .prologue
    .line 3842
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 3843
    .local v0, b0:I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    .line 3844
    .local v1, b1:I
    or-int v2, v0, v1

    return v2
.end method

.method static restoreMuteState()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 939
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 942
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 945
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_4

    .line 947
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 950
    .local v2, phoneType:I
    const/4 v3, 0x0

    .line 956
    .local v3, shouldMute:Ljava/lang/Boolean;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 957
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .line 963
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 964
    const-string v4, "problem retrieving mute value for this connection."

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 965
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 969
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    move-object v4, v3

    .line 972
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :goto_1
    return-object v4

    .line 959
    .restart local v2       #phoneType:I
    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    :cond_2
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 961
    :cond_3
    sget-object v4, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #shouldMute:Ljava/lang/Boolean;
    check-cast v3, Ljava/lang/Boolean;

    .restart local v3       #shouldMute:Ljava/lang/Boolean;
    goto :goto_0

    .line 972
    .end local v2           #phoneType:I
    .end local v3           #shouldMute:Ljava/lang/Boolean;
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method static restoreNoiseSuppression(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreNoiseSuppression, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabledByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2305
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2321
    :cond_0
    :goto_0
    return-void

    .line 2309
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionWBMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2318
    :cond_2
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabledByUser:Z

    if-eq v0, v1, :cond_0

    .line 2319
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabledByUser:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreSpeakerMode, restoring to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2266
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_0

    .line 2267
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2269
    :cond_0
    return-void
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 893
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 894
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 895
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 897
    const-string v1, "PhoneUtils"

    const-string v2, "onReceive: (CDMA) sending empty flash to network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 901
    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_0
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 1012
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "separateCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1015
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static setAMRCodec(Lcom/android/phone/PhoneUtils$AMRState;)V
    .locals 0
    .parameter "codec"

    .prologue
    .line 2380
    sput-object p0, Lcom/android/phone/PhoneUtils;->AMR_codec:Lcom/android/phone/PhoneUtils$AMRState;

    .line 2381
    return-void
.end method

.method static setAudioMode()V
    .locals 1

    .prologue
    .line 2473
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 2474
    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "PhoneUtils"

    .line 2480
    const-string v0, "PhoneUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioMode()..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2483
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2485
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 2486
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 2487
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2489
    if-eq v1, v0, :cond_0

    .line 2496
    :goto_0
    return-void

    .line 2493
    :cond_0
    const-string v0, "PhoneUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode() no change: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setMute(Z)V
    .locals 5
    .parameter "muted"

    .prologue
    .line 2418
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2421
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2426
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2427
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2428
    const-string v3, "problem retrieving mute value for this connection."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2430
    :cond_0
    sget-object v3, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2432
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :cond_1
    return-void
.end method

.method private static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMuteInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2439
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2440
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2442
    if-eqz v0, :cond_0

    .line 2443
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMicrophoneMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2450
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 2451
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 2452
    return-void

    .line 2448
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method private static setRilcommandSender(I)[B
    .locals 7
    .parameter "requestedState"

    .prologue
    const-string v6, "setRilcommandSender : close fail - "

    .line 3744
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3745
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3747
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x11

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3748
    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3749
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3750
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3755
    if-eqz v1, :cond_0

    .line 3757
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3764
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :cond_1
    :goto_1
    return-object v3

    .line 3758
    :catch_0
    move-exception v2

    .line 3759
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRilcommandSender : close fail - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3751
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 3752
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "setRilcommandSender : can\'t write byte"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3753
    const/4 v3, 0x0

    .line 3755
    if-eqz v1, :cond_1

    .line 3757
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3758
    :catch_2
    move-exception v2

    .line 3759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRilcommandSender : close fail - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3755
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 3757
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3761
    :cond_2
    :goto_2
    throw v3

    .line 3758
    :catch_3
    move-exception v2

    .line 3759
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRilcommandSender : close fail - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method static showHidedMmiDialog()V
    .locals 2

    .prologue
    .line 1421
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1422
    const-string v0, "showHidedMmiDialog..."

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1423
    sget-object v0, Lcom/android/phone/PhoneUtils;->mMmiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1424
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    .line 1426
    :cond_0
    return-void
.end method

.method static startCallConnectedVibration(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "vibration_call_connected"

    .line 3427
    const-string v0, "vibration_call_connected"

    .line 3428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibration_call_connected"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCallConnectedVibration : setting - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3432
    if-ge v0, v3, :cond_0

    move v0, v4

    .line 3440
    :goto_0
    return v0

    .line 3435
    :cond_0
    if-ne v0, v3, :cond_1

    .line 3436
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 3438
    const/16 v1, 0xe

    const v2, 0xc350

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrateImmVibe(II)V

    :cond_1
    move v0, v3

    .line 3440
    goto :goto_0
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v8, ", Name/Number Pres="

    .line 1648
    if-nez p1, :cond_0

    .line 1650
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1651
    iput-object v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1893
    :goto_0
    return-object v1

    .line 1684
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 1685
    instance-of v1, v2, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1687
    new-instance v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1688
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1689
    move-object v0, v2

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    sget-object v4, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v1, v4, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1691
    iget-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1692
    iput-boolean v7, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1694
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: query based on Uri: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 1698
    :cond_1
    if-nez v2, :cond_4

    .line 1701
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1704
    const-string v2, "###### PhoneUtils.startGetCallerInfo: new query for phone number #####"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- number (address): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- phoneType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1710
    packed-switch v2, :pswitch_data_0

    .line 1715
    const-string v2, "  ==> Unknown phone type"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1719
    :goto_1
    new-instance v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1720
    new-instance v3, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1724
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1731
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1733
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1734
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: CNAP Info from FW(1): name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Name/Number Pres="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1749
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1752
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v3, v1, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1768
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1772
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_2

    .line 1773
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1791
    :goto_2
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: query based on number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v2

    .line 1795
    goto/16 :goto_0

    .line 1711
    :pswitch_0
    const-string v2, "  ==> PHONE_TYPE_NONE"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1712
    :pswitch_1
    const-string v2, "  ==> PHONE_TYPE_GSM"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1713
    :pswitch_2
    const-string v2, "  ==> PHONE_TYPE_CDMA"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1714
    :pswitch_3
    const-string v2, "  ==> PHONE_TYPE_SIP"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1775
    :cond_2
    const-string v3, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1776
    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v1, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1778
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v3, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1779
    iput-boolean v7, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1787
    :cond_3
    const-string v3, "startGetCallerInfo: No query to start, send trivial reply."

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1788
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 1795
    :cond_4
    instance-of v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_9

    .line 1797
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 1800
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v1, :cond_5

    .line 1801
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: query already running, adding listener: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 1807
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: updatedNumber initially = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1809
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1811
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1819
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1820
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1821
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1823
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v3, v1, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1826
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: updatedNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startGetCallerInfo: CNAP Info from FW(2): name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Name/Number Pres="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1840
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_6

    .line 1841
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    :goto_3
    move-object v1, v2

    .line 1875
    goto/16 :goto_0

    .line 1843
    :cond_6
    sget-object v3, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v5, p0, v1, v3, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1845
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1846
    iput-boolean v7, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_3

    .line 1849
    :cond_7
    const-string v1, "startGetCallerInfo: No query to attach to, send trivial reply."

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1850
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v1, :cond_8

    .line 1851
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1854
    :cond_8
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1862
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1863
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1864
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 1866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGetCallerInfo: CNAP Info from FW(3): name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Name/Number Pres="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 1869
    iput-boolean v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_3

    .line 1877
    :cond_9
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1878
    check-cast v2, Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1886
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1888
    iput-object v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1889
    iput-boolean v6, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1891
    const-string v2, "startGetCallerInfo: query already done, returning CallerInfo"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1710
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static startNewCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2194
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2195
    const-string v0, "PhoneUtils"

    const-string v1, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 2217
    :goto_0
    return-void

    .line 2201
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2202
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 2205
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2208
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2209
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2214
    const-string v1, "add_call_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2216
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static startToast(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 3530
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(Ljava/lang/String;)V

    .line 3531
    return-void
.end method

.method static startToast(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3517
    if-eqz p0, :cond_1

    .line 3518
    sget-object v0, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    .line 3520
    :goto_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3521
    sget-object v0, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 3522
    sget-object v0, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 3523
    sget-object v0, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3528
    :goto_1
    return-void

    .line 3519
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 3526
    :cond_1
    const-string v0, "displayToast : msg or context is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .parameter

    .prologue
    .line 908
    :try_start_0
    const-string v0, "switchHoldingAndActive"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 909
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 917
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 918
    const/4 v0, 0x1

    .line 921
    :goto_1
    return v0

    .line 915
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchHoldingAndActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static teleBinarySearch([BII)I
    .locals 8
    .parameter "telephoneCityProvince"
    .parameter "iNum"
    .parameter "count"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3850
    const/4 v2, 0x0

    .line 3851
    .local v2, i:I
    new-array v1, v7, [B

    .line 3853
    .local v1, buffer2:[B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 3855
    const/4 v3, 0x0

    sget v4, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/android/phone/PhoneUtils;->telSize:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v7

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 3856
    sget v3, Lcom/android/phone/PhoneUtils;->telSize:I

    mul-int/2addr v3, v2

    sget v4, Lcom/android/phone/PhoneUtils;->telSize:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v6

    aget-byte v3, p0, v3

    aput-byte v3, v1, v6

    .line 3857
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->readUnsignedShort([B)I

    move-result v0

    .line 3858
    .local v0, areaCode:I
    if-ne v0, p1, :cond_0

    move v3, v2

    .line 3863
    .end local v0           #areaCode:I
    :goto_1
    return v3

    .line 3853
    .restart local v0       #areaCode:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3863
    .end local v0           #areaCode:I
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method static turnOnNoiseSuppression(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnNoiseSuppression: flag ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2278
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2280
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2284
    :cond_1
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabled:Z

    .line 2285
    if-ne p1, v2, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->canEnableNoiseSuppression(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2287
    sput-boolean v2, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabled:Z

    .line 2288
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionWBMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2289
    sput-boolean v3, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabled:Z

    .line 2293
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dualmic_enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnNoiseSuppression: isNoiseSuppressionEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2297
    if-eqz p2, :cond_0

    .line 2298
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionEnabledByUser:Z

    goto :goto_0
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turnOnSpeaker(flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 2221
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2223
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2225
    :cond_0
    if-eqz p2, :cond_1

    .line 2226
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 2228
    :cond_1
    if-eqz p1, :cond_4

    .line 2229
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 2231
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2232
    invoke-static {p0, v2, v2}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 2245
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2246
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2247
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2250
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 2253
    :cond_3
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled(Z)V

    .line 2255
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 2256
    return-void

    .line 2235
    :cond_4
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2236
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->restoreNoiseSuppression(Landroid/content/Context;)V

    .line 2238
    :cond_5
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneApp;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0
.end method

.method public static updateRAFT()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v3, "ril.IMSI"

    const-string v4, "999999999999999"

    .line 3691
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3692
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 3696
    const-string v2, "ril.IMSI"

    .line 3697
    const-string v2, "999999999999999"

    .line 3698
    const-string v2, "ril.IMSI"

    const-string v2, "INVALID"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRAFT current state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3703
    if-nez v1, :cond_1

    .line 3704
    const-string v0, "updateRAFT(): phone is null"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3740
    :cond_0
    :goto_0
    return-void

    .line 3708
    :cond_1
    sget-boolean v3, Lcom/android/phone/PhoneApp;->mIsUsbConnected:Z

    if-eq v3, v5, :cond_2

    if-eqz v2, :cond_3

    .line 3709
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRAFT() : FactoryMode : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3710
    const/4 v0, 0x4

    .line 3729
    :goto_1
    sget v2, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    if-ne v2, v0, :cond_9

    .line 3730
    const-string v0, "updateRAFT current and requested states are same, so do nothing"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3711
    :cond_3
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_5

    .line 3712
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    if-ne v0, v5, :cond_4

    move v0, v7

    .line 3713
    goto :goto_1

    :cond_4
    move v0, v6

    .line 3715
    goto :goto_1

    .line 3717
    :cond_5
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-ne v0, v5, :cond_6

    .line 3718
    const/4 v0, 0x2

    goto :goto_1

    .line 3719
    :cond_6
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsProximityCloseDistance:Z

    if-ne v0, v5, :cond_7

    move v0, v5

    .line 3720
    goto :goto_1

    .line 3722
    :cond_7
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsScreenOn:Z

    if-ne v0, v5, :cond_8

    move v0, v7

    .line 3723
    goto :goto_1

    :cond_8
    move v0, v6

    .line 3725
    goto :goto_1

    .line 3734
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRAFT current state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " next state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    .line 3735
    sput v0, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    .line 3737
    sget v0, Lcom/android/phone/PhoneUtils;->mpreRAFTstate:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setRilcommandSender(I)[B

    move-result-object v0

    .line 3738
    if-eqz v0, :cond_0

    .line 3739
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method
