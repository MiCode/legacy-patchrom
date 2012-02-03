.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$MediaButtonBroadcastReceiver;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final EUR_VOL_CODE:[Ljava/lang/String; = null

.field private static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x8

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x5

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x6

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x4

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x7

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x9

.field private static final MSG_SET_SYSTEM_VOLUME:I = 0x0

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0xa

.field public static final MUSIC_PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x8

.field private static final PERSIST_DELAY:I = 0xbb8

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SHARED_MSG:I = -0x1

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_EFFECT_VOLUME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final VOICEMEMO_MM_GAIN:Ljava/lang/String; = "omap.audio.voicerecord.mm.gain"

.field private static final VOICEMEMO_TONE_GAIN:Ljava/lang/String; = "omap.audio.voicerecord.tone.gain"

.field private static final VOICEMEMO_VDL_GAIN:Ljava/lang/String; = "omap.audio.voicerecord.vdl.gain"

.field private static final VOICEMEMO_VUL_GAIN:Ljava/lang/String; = "omap.audio.voicerecord.vul.gain"

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final ACTION_THEME_PACKAGE_CHANGED:Ljava/lang/String;

.field private final DEBUG_THEME:Z

.field private MAX_STREAM_VOLUME:[I

.field private SOUND_EFFECT_FILES_MAP:[[I

.field private STREAM_VOLUME_ALIAS:[I

.field private final STREAM_VOLUME_ALIAS_KOR:[I

.field private final STREAM_VOLUME_ALIAS_ORG:[I

.field private boot_complete_flag:Z

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetConnected:Z

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

.field private mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDockAddress:Ljava/lang/String;

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field private mIsEarProtectLimitOn:Z

.field private mIsRinging:Z

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaServerOk:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mNotificationsUseRingVolume:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamHeadsetStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamNormalStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateSetting:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TW_Touch.ogg"

    aput-object v1, v0, v3

    const-string v1, "TW_Unlock_Glass.ogg"

    aput-object v1, v0, v4

    const-string v1, "TW_Unlock_Puzzle.ogg"

    aput-object v1, v0, v5

    const-string v1, "TW_Low_Battery.ogg"

    aput-object v1, v0, v6

    const-string v1, "TW_Battery_caution.ogg"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Charger_Connection.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Insert.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TW_Call_Disconnect.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 374
    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ATL"

    aput-object v1, v0, v3

    const-string v1, "ATO"

    aput-object v1, v0, v4

    const-string v1, "AUT"

    aput-object v1, v0, v5

    const-string v1, "BGL"

    aput-object v1, v0, v6

    const-string v1, "COS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DBT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DRE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EDC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EUR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FOP"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HUI"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ITV"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MAX"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MOB"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NEE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "OMN"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "OPT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ORG"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PHN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ROM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SER"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "SIM"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "SSA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SUN"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SWC"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "TCL"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "TIM"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "TMN"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "TPH"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "TRA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TUR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "VGR"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "VIA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "VOD"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "WIN"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "XEC"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "XEE"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "XEF"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "XEG"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "XEH"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "XEN"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "XEO"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "XET"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "XEU"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "XEZ"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "XFA"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "XSK"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->EUR_VOL_CODE:[Ljava/lang/String;

    .line 2656
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 2658
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0xc

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 385
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 93
    iput-boolean v6, p0, Landroid/media/AudioService;->DEBUG_THEME:Z

    .line 94
    const-string/jumbo v2, "samsung.theme_package_changed"

    iput-object v2, p0, Landroid/media/AudioService;->ACTION_THEME_PACKAGE_CHANGED:Ljava/lang/String;

    .line 146
    iput-boolean v6, p0, Landroid/media/AudioService;->boot_complete_flag:Z

    .line 151
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 176
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 206
    const/16 v2, 0x11

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-array v4, v5, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v5, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_c

    aput-object v3, v2, v7

    const/16 v3, 0xd

    new-array v4, v5, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v5, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-array v4, v5, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-array v4, v5, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v3

    iput-object v2, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 230
    new-array v2, v7, [I

    fill-array-data v2, :array_11

    iput-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 249
    new-array v2, v7, [I

    fill-array-data v2, :array_12

    iput-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_ORG:[I

    .line 265
    new-array v2, v7, [I

    fill-array-data v2, :array_13

    iput-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_KOR:[I

    .line 281
    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_ORG:[I

    check-cast v2, [I

    iput-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 284
    new-instance v2, Landroid/media/AudioService$1;

    invoke-direct {v2, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 336
    new-instance v2, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v2, p0, v9}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v2, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    new-instance v2, Landroid/media/AudioService$MediaButtonBroadcastReceiver;

    invoke-direct {v2, p0, v9}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v2, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 346
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 373
    iput-boolean v8, p0, Landroid/media/AudioService;->mIsEarProtectLimitOn:Z

    .line 1505
    new-instance v2, Landroid/media/AudioService$2;

    invoke-direct {v2, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 2660
    new-instance v2, Landroid/media/AudioService$3;

    invoke-direct {v2, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2733
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 3028
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 3109
    new-instance v2, Landroid/media/AudioService$4;

    invoke-direct {v2, p0}, Landroid/media/AudioService$4;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 386
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 390
    iget-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v3, "ro.config.vc_call_vol_steps"

    iget-object v4, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v6

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    .line 394
    new-instance v2, Landroid/view/VolumePanel;

    invoke-direct {v2, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 395
    new-instance v2, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v2, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 396
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 397
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 398
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 399
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 401
    const/4 v2, -0x2

    iput v2, p0, Landroid/media/AudioService;->mMode:I

    .line 402
    invoke-virtual {p0, v6, v9}, Landroid/media/AudioService;->setMode(ILandroid/os/IBinder;)V

    .line 403
    iput-boolean v8, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 407
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 408
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    invoke-direct {p0, v2, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 410
    iget-object v2, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 411
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 413
    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 414
    new-instance v2, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    invoke-direct {v2, p1, v3}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v2, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, intentFilter:Landroid/content/IntentFilter;
    sget-boolean v2, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v2, :cond_0

    .line 426
    const-string/jumbo v2, "omap.audio.voicerecord.vul.gain"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string/jumbo v2, "omap.audio.voicerecord.vdl.gain"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string/jumbo v2, "omap.audio.voicerecord.mm.gain"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v2, "omap.audio.voicerecord.tone.gain"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    :cond_0
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string v2, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string v2, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string v2, "HDMI_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string v2, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 445
    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 455
    iget-object v2, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 460
    .local v1, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 463
    iget-object v2, p0, Landroid/media/AudioService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "samsung.theme_package_changed"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 465
    return-void

    .line 206
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_d
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_10
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 230
    :array_11
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 249
    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 265
    :array_13
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    return p1
.end method

.method static synthetic access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    return-void
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 89
    invoke-static/range {p0 .. p7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/AudioService;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    return v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$3300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Landroid/media/AudioService;->getMsgBase(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$4100(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$4302(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return v0
.end method

.method static synthetic access$4402(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return p1
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mStreamNormalStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mStreamHeadsetStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    return-void
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4902(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5202(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->boot_complete_flag:Z

    return p1
.end method

.method static synthetic access$5300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/media/AudioService;->EUR_VOL_CODE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5402(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsEarProtectLimitOn:Z

    return p1
.end method

.method static synthetic access$5500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    return v0
.end method

.method static synthetic access$5602(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$5700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/media/AudioService;->updateTheme()V

    return-void
.end method

.method private broadcastRingerMode()V
    .locals 5

    .prologue
    .line 1649
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1651
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1654
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1655
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1656
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .parameter "vibrateType"

    .prologue
    .line 1660
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1661
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1662
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1663
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1664
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1666
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 2

    .prologue
    .line 2814
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2815
    const/4 v0, 0x0

    .line 2817
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 2307
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 2308
    return-void
.end method

.method private checkForRingerModeChange(II)Z
    .locals 5
    .parameter "oldIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 1549
    const/4 v0, 0x1

    .line 1550
    .local v0, adjustVolumeIndex:Z
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1552
    .local v1, newRingerMode:I
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1554
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    add-int/lit8 v2, p1, 0x5

    div-int/lit8 v2, v2, 0xa

    if-ne v2, v4, :cond_0

    .line 1557
    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_in_silent"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v1, v4

    .line 1571
    :cond_0
    :goto_0
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v1, v2, :cond_1

    .line 1572
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1579
    const/4 v0, 0x0

    .line 1582
    :cond_1
    return v0

    .line 1557
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 1562
    :cond_3
    if-ne p2, v4, :cond_4

    .line 1564
    const/4 v1, 0x2

    goto :goto_0

    .line 1567
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 468
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 469
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 470
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 471
    return-void
.end method

.method private createStreamStates()V
    .locals 15

    .prologue
    const/4 v12, 0x3

    const-string v14, "_hs"

    const-string v13, "AudioService"

    .line 533
    const/4 v4, 0x0

    .line 535
    .local v4, isHeadset:Z
    iget-object v10, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 536
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    .line 543
    sget-object v10, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v12

    aget-object v7, v10, v11

    .line 544
    .local v7, settingName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_hs"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 545
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 546
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v10, -0x1

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 549
    .local v9, volume:I
    if-gez v9, :cond_0

    .line 550
    sget-object v10, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v12

    aget-object v6, v10, v11

    .line 551
    .local v6, settingHsName:Ljava/lang/String;
    sget-object v10, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v10, v10, v12

    invoke-static {v1, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 554
    .local v8, spkVolume:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_hs"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 555
    invoke-static {v1, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 558
    .local v2, dbInsert:Z
    if-nez v2, :cond_0

    .line 559
    const-string v10, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to insert Headset volume for :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #dbInsert:Z
    .end local v6           #settingHsName:Ljava/lang/String;
    .end local v7           #settingName:Ljava/lang/String;
    .end local v8           #spkVolume:I
    .end local v9           #volume:I
    :cond_0
    if-nez v4, :cond_2

    const/4 v10, 0x1

    :goto_0
    invoke-direct {p0, v10}, Landroid/media/AudioService;->createStreamStates(Z)V

    .line 566
    invoke-direct {p0, v4}, Landroid/media/AudioService;->createStreamStates(Z)V

    .line 568
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    .line 569
    .local v5, numStreamTypes:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 571
    iget-object v10, p0, Landroid/media/AudioService;->mStreamHeadsetStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v10, v10, v3

    if-nez v10, :cond_1

    .line 572
    const-string v10, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Headset state is empty for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " stream. Use it from Normal state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v10, p0, Landroid/media/AudioService;->mStreamHeadsetStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v11, p0, Landroid/media/AudioService;->mStreamNormalStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v11, v11, v3

    aput-object v11, v10, v3

    .line 569
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 565
    .end local v3           #i:I
    .end local v5           #numStreamTypes:I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 596
    .restart local v3       #i:I
    .restart local v5       #numStreamTypes:I
    :cond_3
    return-void
.end method

.method private createStreamStates(Z)V
    .locals 9
    .parameter "isHeadset"

    .prologue
    const/4 v8, 0x0

    .line 488
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 489
    .local v2, numStreamTypes:I
    new-array v4, v2, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 491
    .local v4, streams:[Landroid/media/AudioService$VolumeStreamState;
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "++ createStreamStates hs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-eqz p1, :cond_0

    .line 494
    iput-object v4, p0, Landroid/media/AudioService;->mStreamHeadsetStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 499
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 502
    if-eqz p1, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    .line 506
    aput-object v8, v4, v0

    .line 499
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 496
    .end local v0           #i:I
    :cond_0
    iput-object v4, p0, Landroid/media/AudioService;->mStreamNormalStates:[Landroid/media/AudioService$VolumeStreamState;

    goto :goto_0

    .line 510
    .restart local v0       #i:I
    :cond_1
    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    aget-object v3, v5, v6

    .line 511
    .local v3, settingName:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_hs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    :cond_2
    new-instance v5, Landroid/media/AudioService$VolumeStreamState;

    invoke-direct {v5, p0, v3, v0, v8}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v5, v4, v0

    goto :goto_2

    .line 518
    .end local v3           #settingName:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_5

    .line 519
    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    if-eq v5, v0, :cond_4

    aget-object v5, v4, v0

    if-eqz v5, :cond_4

    .line 520
    aget-object v5, v4, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    invoke-direct {p0, v5, v6, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 521
    .local v1, index:I
    aget-object v5, v4, v0

    aget-object v6, v4, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v6

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 522
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 523
    aget-object v5, v4, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    invoke-direct {p0, v5, v6, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 524
    aget-object v5, v4, v0

    aget-object v6, v4, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v6

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 518
    .end local v1           #index:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 528
    :cond_5
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2740
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2742
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2743
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2744
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2745
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2748
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2749
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 3035
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 3037
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3038
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3039
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 3040
    .local v0, fse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     receiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3042
    .end local v0           #fse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3043
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 1598
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1599
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1601
    :cond_1
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 1604
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1605
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1607
    :cond_1
    return-void
.end method

.method private getActiveStreamType(I)I
    .locals 7
    .parameter "suggestedStreamType"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string v6, "AudioService"

    .line 1610
    const/4 v1, 0x0

    .line 1612
    .local v1, isOffhook:Z
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1613
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1618
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1620
    const/4 v3, 0x6

    .line 1643
    :goto_1
    return v3

    .line 1614
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1615
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v3, "Couldn\'t connect to phone service"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1621
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    if-nez v1, :cond_2

    invoke-static {v4}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v4

    .line 1623
    goto :goto_1

    .line 1624
    :cond_3
    invoke-static {v5}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    .line 1626
    goto :goto_1

    .line 1628
    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1629
    const-string v3, "AudioService"

    const-string v3, "getActiveStreamType: Forcing STREAM_FM_RADIO..."

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/16 v3, 0xa

    goto :goto_1

    .line 1633
    :cond_5
    invoke-virtual {p0}, Landroid/media/AudioService;->isFMPlayerActive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1638
    :cond_6
    const/high16 v3, -0x8000

    if-ne p1, v3, :cond_7

    .line 1640
    const/4 v3, 0x2

    goto :goto_1

    :cond_7
    move v3, p1

    .line 1643
    goto :goto_1
.end method

.method private static getMsg(II)I
    .locals 2
    .parameter "baseMsg"
    .parameter "streamType"

    .prologue
    .line 1670
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getMsgBase(I)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 1674
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 984
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 987
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 989
    return p0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 2311
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1590
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    .line 2274
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2278
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2279
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 2297
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2299
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2302
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2304
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    const/16 v3, 0x80

    .line 2284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2286
    .local v0, noisyIntent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2287
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2288
    const/4 v1, 0x0

    invoke-static {v3, v1, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2291
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    return-void
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 4

    .prologue
    .line 2698
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 2699
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2701
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    :cond_0
    :goto_0
    return-void

    .line 2703
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2704
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private pushMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "newReceiver"

    .prologue
    .line 3051
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3063
    :goto_0
    return-void

    .line 3054
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3055
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3056
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 3057
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3058
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 3062
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_2
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    new-instance v3, Landroid/media/AudioService$RemoteControlStackEntry;

    invoke-direct {v3, p1}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readPersistedSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 674
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 676
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 678
    const-string/jumbo v1, "vibrate_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 685
    const-string/jumbo v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 690
    const-string/jumbo v1, "mute_streams_affected"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 694
    const-string/jumbo v1, "notifications_use_ring_volume"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    .line 697
    iget v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    if-ne v1, v3, :cond_0

    .line 698
    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    const/4 v2, 0x5

    aput v5, v1, v2

    .line 703
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 706
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 707
    invoke-direct {p0, v3}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 708
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 2760
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2763
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2764
    if-eqz p2, :cond_0

    .line 2766
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 2781
    :cond_0
    return-void

    .line 2771
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2772
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2773
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2774
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2775
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .parameter "cb"

    .prologue
    .line 2789
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 2791
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2792
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2793
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 2794
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2795
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2789
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 2800
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 2803
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 2805
    :cond_3
    return-void
.end method

.method private removeMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "newReceiver"

    .prologue
    .line 3070
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3071
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3072
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 3073
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3074
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 3078
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private rescaleIndex(III)I
    .locals 2
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 715
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .locals 4
    .parameter "handler"
    .parameter "baseMsg"
    .parameter "streamType"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 1679
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    move v0, p1

    .line 1681
    .local v0, msg:I
    :goto_0
    if-nez p3, :cond_2

    .line 1682
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1687
    :cond_0
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p7

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1689
    :goto_1
    return-void

    .line 1679
    .end local v0           #msg:I
    :cond_1
    invoke-static {p1, p2}, Landroid/media/AudioService;->getMsg(II)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 1683
    .restart local v0       #msg:I
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method private sendVolumeUpdate(III)V
    .locals 2
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"

    .prologue
    .line 802
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 803
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 808
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 811
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .locals 10
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 907
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 913
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 914
    .local v8, numStreamTypes:I
    sub-int v9, v8, v2

    .local v9, streamType:I
    :goto_0
    if-ltz v9, :cond_3

    .line 915
    invoke-direct {p0, v9}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v4, :cond_1

    .line 918
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 919
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, v9

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 914
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 922
    :cond_2
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v4, :cond_1

    .line 924
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 925
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v2, v9

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_1

    .line 931
    :cond_3
    if-eqz p2, :cond_4

    .line 932
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/16 v7, 0xbb8

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 935
    :cond_4
    return-void
.end method

.method private setStreamVolumeIndex(II)V
    .locals 1
    .parameter "stream"
    .parameter "index"

    .prologue
    .line 711
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 712
    return-void
.end method

.method private setStreamVolumeInt(IIZZ)V
    .locals 8
    .parameter "streamType"
    .parameter "index"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    .line 824
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 827
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    if-eqz p2, :cond_0

    .line 830
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 832
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    .line 839
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private updateTheme()V
    .locals 2

    .prologue
    .line 3121
    new-instance v0, Landroid/view/VolumePanel;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 3122
    return-void
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 475
    monitor-enter p0

    .line 476
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 479
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 5
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v3, 0x1

    const-string v4, "AudioService"

    .line 2940
    const-string v1, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    :try_start_0
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, p2, v2}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2945
    monitor-exit v1

    .line 2954
    :goto_0
    return v3

    .line 2945
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2946
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2950
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 11
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 742
    invoke-direct {p0, p2}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 743
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 745
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, p1

    aget-object v6, v0, v1

    .line 746
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_3

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    move v10, v0

    .line 747
    .local v10, oldIndex:I
    :goto_0
    const/4 v8, 0x1

    .line 751
    .local v8, adjustVolume:Z
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 755
    :cond_0
    invoke-direct {p0, v10, p2}, Landroid/media/AudioService;->checkForRingerModeChange(II)Z

    move-result v8

    .line 760
    :cond_1
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    if-eqz v8, :cond_2

    .line 762
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(I)V

    .line 764
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 767
    :cond_2
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v9

    .line 778
    .local v9, index:I
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 780
    invoke-direct {p0, p1, v10, v9}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    .line 781
    return-void

    .line 746
    .end local v8           #adjustVolume:Z
    .end local v9           #index:I
    .end local v10           #oldIndex:I
    :cond_3
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    move v10, v0

    goto :goto_0

    .line 769
    .restart local v8       #adjustVolume:Z
    .restart local v10       #oldIndex:I
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 772
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 775
    :cond_5
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v9

    .restart local v9       #index:I
    goto :goto_1
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 2
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 730
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 733
    .local v0, streamType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_0

    .line 734
    and-int/lit8 p3, p3, -0x5

    .line 737
    :cond_0
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    .line 738
    return-void
.end method

.method public adjustVolume(II)V
    .locals 1
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 724
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 725
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 1692
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1694
    const/4 v1, 0x1

    .line 1700
    :goto_0
    return v1

    .line 1696
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients()V
    .locals 5

    .prologue
    .line 1497
    iget-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1498
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1499
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1500
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$ScoClient;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    :cond_0
    monitor-exit v3

    .line 1503
    return-void

    .line 1502
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3103
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 3104
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 3105
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method public getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;
    .locals 6
    .parameter "cb"

    .prologue
    .line 1482
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1484
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1485
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1486
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 1487
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 1488
    monitor-exit v4

    move-object v1, v0

    .line 1492
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 1485
    .end local v1           #client:Ljava/lang/Object;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1490
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    :cond_1
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 1491
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    monitor-exit v4

    move-object v1, v0

    .restart local v1       #client:Ljava/lang/Object;
    goto :goto_1

    .line 1493
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .end local v1           #client:Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 870
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 863
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 864
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .parameter "vibrateType"

    .prologue
    .line 959
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public headsetToggle(Z)V
    .locals 11
    .parameter "headset"

    .prologue
    const/4 v10, 0x3

    const-string v9, "AudioService"

    .line 599
    const-string v7, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++ headsetToggle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v6, 0x0

    .line 601
    .local v6, updateSettings:Z
    if-eqz p1, :cond_2

    .line 602
    iget-object v7, p0, Landroid/media/AudioService;->mStreamHeadsetStates:[Landroid/media/AudioService$VolumeStreamState;

    if-eqz v7, :cond_0

    .line 603
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v8, p0, Landroid/media/AudioService;->mStreamHeadsetStates:[Landroid/media/AudioService$VolumeStreamState;

    if-eq v7, v8, :cond_0

    .line 604
    iget-object v7, p0, Landroid/media/AudioService;->mStreamHeadsetStates:[Landroid/media/AudioService$VolumeStreamState;

    iput-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 605
    const/4 v6, 0x1

    .line 618
    :cond_0
    :goto_0
    if-eqz v6, :cond_8

    .line 619
    const-string v7, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++ headsetToggle update: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    .line 622
    .local v4, numStreamTypes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_8

    .line 624
    if-eq v1, v10, :cond_3

    const/16 v7, 0xa

    if-eq v1, v7, :cond_3

    .line 622
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 609
    .end local v1           #i:I
    .end local v4           #numStreamTypes:I
    :cond_2
    iget-object v7, p0, Landroid/media/AudioService;->mStreamNormalStates:[Landroid/media/AudioService$VolumeStreamState;

    if-eqz v7, :cond_0

    .line 610
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v8, p0, Landroid/media/AudioService;->mStreamNormalStates:[Landroid/media/AudioService$VolumeStreamState;

    if-eq v7, v8, :cond_0

    .line 611
    iget-object v7, p0, Landroid/media/AudioService;->mStreamNormalStates:[Landroid/media/AudioService$VolumeStreamState;

    iput-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 612
    const/4 v6, 0x1

    goto :goto_0

    .line 628
    .restart local v1       #i:I
    .restart local v4       #numStreamTypes:I
    :cond_3
    iget-object v7, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v7, v7, v1

    if-eq v7, v1, :cond_4

    .line 629
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v7}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v7

    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v1

    invoke-direct {p0, v7, v8, v1}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v2

    .line 630
    .local v2, index:I
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v8, v1

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v8, v2}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v7, v8}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 632
    invoke-direct {p0, v1, v2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 633
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v7}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v7

    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v1

    invoke-direct {p0, v7, v8, v1}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v2

    .line 634
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v8, v1

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v8, v2}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v7, v8}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 635
    const-string v7, "AudioService"

    const-string v7, "++ headsetToggle update: 1"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 639
    .end local v2           #index:I
    :cond_4
    iget-boolean v7, p0, Landroid/media/AudioService;->boot_complete_flag:Z

    if-eqz v7, :cond_1

    .line 640
    if-ne v1, v10, :cond_7

    .line 642
    invoke-virtual {p0, v10}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v3

    .line 643
    .local v3, musicLev:I
    const/16 v0, 0xa

    .line 644
    .local v0, defaultMusicLev:I
    iget-boolean v7, p0, Landroid/media/AudioService;->mIsEarProtectLimitOn:Z

    if-eqz v7, :cond_5

    if-le v3, v0, :cond_5

    move v5, v0

    .line 645
    .local v5, setMusicLev:I
    :goto_3
    if-eqz p1, :cond_6

    .line 646
    const-string v7, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++ headsetToggle update: defaultMusicLev= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " musicLev = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " setMusicLev = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v7, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++ headsetToggle update: mStreamStates[i].mLastAudibleIndex= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v8, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mStreamStates[i].mIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v8, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    mul-int/lit8 v8, v5, 0xa

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v7, v8}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 649
    mul-int/lit8 v7, v5, 0xa

    invoke-direct {p0, v1, v7}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 650
    const/4 v7, 0x0

    invoke-virtual {p0, v10, v5, v7}, Landroid/media/AudioService;->setStreamVolume(III)V

    goto/16 :goto_2

    .end local v5           #setMusicLev:I
    :cond_5
    move v5, v3

    .line 644
    goto :goto_3

    .line 653
    .restart local v5       #setMusicLev:I
    :cond_6
    const-string v7, "AudioService"

    const-string v7, "++ headsetToggle update: 3"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v8, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v7, v8}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 655
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v7}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v7

    invoke-direct {p0, v1, v7}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto/16 :goto_2

    .line 659
    .end local v0           #defaultMusicLev:I
    .end local v3           #musicLev:I
    .end local v5           #setMusicLev:I
    :cond_7
    const-string v7, "AudioService"

    const-string v7, "++ headsetToggle update: 4"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v8, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v7, v8}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 661
    iget-object v7, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v7}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v7

    invoke-direct {p0, v1, v7}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto/16 :goto_2

    .line 671
    .end local v1           #i:I
    .end local v4           #numStreamTypes:I
    :cond_8
    return-void
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 1353
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1354
    const/4 v0, 0x1

    .line 1356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEarProtectLimitOn()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsEarProtectLimitOn:Z

    if-eqz v0, :cond_0

    .line 1328
    const/4 v0, 0x1

    .line 1330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFMPlayerActive()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1277
    :try_start_0
    const-string v2, "FMPlayer"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;

    move-result-object v1

    .line 1279
    .local v1, fmPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;
    if-nez v1, :cond_0

    .line 1280
    const-string v2, "AudioService"

    const-string v3, "isFMPlayerActive: couldn\'t get Fmplayer reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1285
    .end local v1           #fmPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;
    :goto_0
    return v2

    .line 1283
    .restart local v1       #fmPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;
    :cond_0
    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1284
    .end local v1           #fmPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move v2, v4

    .line 1285
    goto :goto_0
.end method

.method public isRadioSpeakerOn()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1316
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1262
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1594
    iget v0, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v2, 0x1

    .line 1586
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1121
    iget-object v5, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1122
    :try_start_0
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v6, :cond_0

    .line 1123
    monitor-exit v5

    move v5, v11

    .line 1163
    :goto_0
    return v5

    .line 1125
    :cond_0
    new-instance v6, Landroid/media/SoundPool;

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1126
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v6, :cond_1

    .line 1127
    monitor-exit v5

    move v5, v10

    goto :goto_0

    .line 1135
    :cond_1
    sget-object v6, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v6, v6

    new-array v3, v6, [I

    .line 1136
    .local v3, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    sget-object v6, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 1137
    const/4 v6, -0x1

    aput v6, v3, v1

    .line 1136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1144
    :cond_2
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    const/16 v6, 0x11

    if-ge v0, v6, :cond_6

    .line 1146
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    if-nez v6, :cond_4

    .line 1144
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1149
    :cond_4
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aget v6, v3, v6

    if-ne v6, v12, :cond_5

    .line 1150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/audio/ui/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1151
    .local v2, filePath:Ljava/lang/String;
    iget-object v6, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    .line 1152
    .local v4, sampleId:I
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aput v4, v6, v7

    .line 1153
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v4, v3, v6

    .line 1154
    if-gtz v4, :cond_3

    .line 1155
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Soundpool could not load file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1161
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #poolId:[I
    .end local v4           #sampleId:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1158
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v3       #poolId:[I
    :cond_5
    :try_start_1
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    aget v8, v3, v8

    aput v8, v6, v7

    goto :goto_3

    .line 1161
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v11

    .line 1163
    goto/16 :goto_0
.end method

.method public pauseAnotherPlay()V
    .locals 4

    .prologue
    const-string v3, "AudioService"

    .line 2845
    const-string v1, "AudioService"

    const-string/jumbo v1, "pauseAnotherPlay() is called"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iloen.melon.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2849
    .local v0, melonIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string/jumbo v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2850
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2851
    const-string v1, "AudioService"

    const-string v1, "ask Melon to pause"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    return-void
.end method

.method public playSoundEffect(I)V
    .locals 8
    .parameter "effectType"

    .prologue
    const/4 v2, -0x1

    .line 1105
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1107
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 8
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1112
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1114
    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "eventReceiver"

    .prologue
    .line 3083
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonEventReceiver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v0

    .line 3086
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 3087
    monitor-exit v0

    .line 3088
    return-void

    .line 3087
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reloadAudioSettings()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1198
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1201
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 1202
    .local v3, numStreamTypes:I
    const/4 v7, 0x0

    .local v7, streamType:I
    :goto_0
    if-ge v7, v3, :cond_5

    .line 1203
    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v8, v7

    .line 1205
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    sget-object v8, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    aget-object v4, v8, v9

    .line 1206
    .local v4, settingName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_last_audible"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1207
    .local v2, lastAudibleSettingName:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v9, v9, v7

    invoke-static {v8, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1210
    .local v1, index:I
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    if-eq v8, v7, :cond_0

    .line 1211
    mul-int/lit8 v8, v1, 0xa

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    invoke-direct {p0, v8, v9, v7}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1215
    :goto_1
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6, v8}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1217
    add-int/lit8 v8, v1, 0x5

    div-int/lit8 v1, v8, 0xa

    .line 1218
    iget-object v8, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v1, :cond_1

    move v9, v1

    :goto_2
    invoke-static {v8, v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1221
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v7

    if-eq v8, v7, :cond_2

    .line 1222
    mul-int/lit8 v8, v1, 0xa

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v7

    invoke-direct {p0, v8, v9, v7}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1226
    :goto_3
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v6, v1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v8

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v6, v8}, Landroid/media/AudioService$VolumeStreamState;->access$802(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1229
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v7}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1230
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1231
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v5, :cond_3

    .line 1232
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v9, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v8, v9}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1302(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1233
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v8, v10}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1213
    .end local v0           #i:I
    .end local v5           #size:I
    :cond_0
    mul-int/lit8 v1, v1, 0xa

    goto :goto_1

    .line 1218
    :cond_1
    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v9, v9, v7

    goto :goto_2

    .line 1224
    :cond_2
    mul-int/lit8 v1, v1, 0xa

    goto :goto_3

    .line 1237
    :cond_3
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    if-nez v8, :cond_4

    .line 1238
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1202
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1243
    .end local v1           #index:I
    .end local v2           #lastAudibleSettingName:Ljava/lang/String;
    .end local v4           #settingName:Ljava/lang/String;
    .end local v6           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_5
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v8

    invoke-direct {p0, v8, v10}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1244
    return-void
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 9
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"

    .prologue
    .line 2858
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2865
    :cond_0
    const-string v0, "AudioService"

    const-string v1, " AudioFocus  DOA client for requestAudioFocus(), exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const/4 v0, 0x0

    .line 2935
    :goto_0
    return v0

    .line 2869
    :cond_1
    sget-object v7, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2870
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2871
    const-string v0, "AudioService"

    const-string v1, "AUDIOFOCUS_REQUEST_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    const/4 v0, 0x0

    monitor-exit v7

    goto :goto_0

    .line 2912
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2875
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2878
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget v0, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    if-ne v0, p2, :cond_3

    .line 2887
    const/4 v0, 0x1

    monitor-exit v7

    goto :goto_0

    .line 2891
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2895
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 2897
    :try_start_2
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v2, p2, -0x1

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2907
    :cond_5
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, p5, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2910
    iget-object v8, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v0, Landroid/media/AudioService$FocusStackEntry;

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService$FocusStackEntry;-><init>(IIZLandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2917
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2919
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    invoke-direct {v7, p0, p3}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 2921
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v0, 0x0

    :try_start_4
    invoke-interface {p3, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2935
    .end local v7           #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2900
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 2901
    .local v8, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Failure to signal loss of focus due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2922
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v7       #afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    :catch_1
    move-exception v8

    .line 2924
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setBluetoothA2dpForceOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1528
    const-string/jumbo v0, "setBluetoothA2dpForceOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    :goto_0
    return-void

    .line 1531
    :cond_0
    if-eqz p1, :cond_1

    .line 1532
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1533
    iput v3, p0, Landroid/media/AudioService;->mForcedUseForMedia:I

    goto :goto_0

    .line 1535
    :cond_1
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1536
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForMedia:I

    goto :goto_0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1337
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1340
    :cond_0
    if-eqz p1, :cond_1

    .line 1341
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1342
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1343
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0

    .line 1345
    :cond_1
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1346
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1347
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 12
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v8, -0x1

    .line 1040
    const-string/jumbo v7, "setMode()"

    invoke-virtual {p0, v7}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    if-lt p1, v8, :cond_0

    const/4 v7, 0x6

    if-ge p1, v7, :cond_0

    .line 1048
    iget-object v7, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1049
    if-ne p1, v8, :cond_2

    .line 1050
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1052
    :cond_2
    iget v8, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v8, :cond_5

    .line 1053
    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v8

    if-nez v8, :cond_5

    .line 1054
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1056
    iget-object v8, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    const/4 v2, 0x0

    .line 1058
    .local v2, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :try_start_1
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1059
    .local v5, iter:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1060
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1061
    .local v1, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v1}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v9, p2, :cond_3

    .line 1062
    move-object v2, v1

    .line 1064
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v2

    .line 1068
    .end local v1           #h:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .local v3, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :goto_1
    if-nez v3, :cond_6

    .line 1069
    :try_start_2
    new-instance v2, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-direct {v2, p0, p2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1071
    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    if-eqz p2, :cond_4

    .line 1074
    const/4 v9, 0x0

    :try_start_3
    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1083
    :cond_4
    :goto_2
    :try_start_4
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1084
    invoke-virtual {v2, p1}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    .line 1085
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1087
    if-eqz p1, :cond_5

    .line 1088
    :try_start_5
    invoke-virtual {p0}, Landroid/media/AudioService;->clearAllScoClients()V

    .line 1092
    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .end local v5           #iter:Ljava/util/Iterator;
    :cond_5
    const/high16 v8, -0x8000

    invoke-direct {p0, v8}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v6

    .line 1093
    .local v6, streamType:I
    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    .line 1094
    .local v4, index:I
    iget-object v8, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v8, v8, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, v4, v9, v10}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 1095
    monitor-exit v7

    goto :goto_0

    .end local v4           #index:I
    .end local v6           #streamType:I
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 1075
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v5       #iter:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setMode() could not link to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " binder death"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1085
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #iter:Ljava/util/Iterator;
    :catchall_1
    move-exception v9

    :goto_3
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v5       #iter:Ljava/util/Iterator;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_3

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_6
    move-object v2, v3

    .end local v3           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_2

    :cond_7
    move-object v3, v2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v3       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    goto :goto_1
.end method

.method public setRadioSpeakerOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1292
    const-string/jumbo v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    if-eqz p1, :cond_2

    .line 1296
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1297
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    .line 1300
    invoke-virtual {p0}, Landroid/media/AudioService;->isFMPlayerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->headsetToggle(Z)V

    goto :goto_0

    .line 1305
    :cond_2
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1306
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    .line 1308
    invoke-virtual {p0}, Landroid/media/AudioService;->isFMPlayerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->headsetToggle(Z)V

    goto :goto_0
.end method

.method public setRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    .line 880
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq p1, v1, :cond_0

    .line 882
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 901
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 903
    :cond_0
    monitor-exit v0

    .line 904
    return-void

    .line 903
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1248
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1251
    :cond_0
    if-eqz p1, :cond_1

    .line 1252
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1253
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0

    .line 1255
    :cond_1
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1256
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 1
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 856
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 859
    :cond_0
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 2
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 847
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 848
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    .line 847
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 852
    :cond_2
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 5
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 785
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 786
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    aget-object v1, v2, v3

    .line 788
    .local v1, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v0, v2

    .line 790
    .local v0, oldIndex:I
    :goto_0
    mul-int/lit8 v2, p2, 0xa

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, p1

    invoke-direct {p0, v2, p1, v3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 791
    iget-object v2, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, p2, v3, v4}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 793
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move p2, v2

    .line 796
    :goto_1
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2, p1, p3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 798
    invoke-direct {p0, p1, v0, p2}, Landroid/media/AudioService;->sendVolumeUpdate(III)V

    .line 799
    return-void

    .line 788
    .end local v0           #oldIndex:I
    :cond_0
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 793
    .restart local v0       #oldIndex:I
    :cond_1
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move p2, v2

    goto :goto_1
.end method

.method public setVibrateSetting(II)V
    .locals 8
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const/4 v4, 0x0

    .line 965
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 968
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 972
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 974
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .parameter "vibrateType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 940
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 953
    :goto_0
    return v0

    .line 943
    :pswitch_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 946
    :pswitch_1
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 950
    goto :goto_0

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1362
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1365
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1366
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_0
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1371
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1376
    :goto_0
    return-void

    .line 1374
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1375
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    .line 1172
    iget-object v3, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1173
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v4, :cond_0

    .line 1174
    monitor-exit v3

    .line 1193
    :goto_0
    return-void

    .line 1176
    :cond_0
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    new-array v2, v4, [I

    .line 1177
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    sget-object v4, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1178
    const/4 v4, 0x0

    aput v4, v2, v1

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1181
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    const/16 v4, 0x11

    if-ge v0, v4, :cond_4

    .line 1182
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_3

    .line 1181
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1185
    :cond_3
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    aget v4, v2, v4

    if-nez v4, :cond_2

    .line 1186
    iget-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1187
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 1188
    iget-object v4, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    aput v5, v2, v4

    goto :goto_3

    .line 1192
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1191
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1192
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 2
    .parameter "clientId"

    .prologue
    .line 2959
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2960
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 2961
    monitor-exit v0

    .line 2962
    return-void

    .line 2961
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "eventReceiver"

    .prologue
    .line 3092
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   unregisterMediaButtonEventReceiver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v0

    .line 3095
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/content/ComponentName;)V

    .line 3096
    monitor-exit v0

    .line 3097
    return-void

    .line 3096
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
