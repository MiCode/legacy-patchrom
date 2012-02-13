.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# static fields
.field private static final ALARM_VOLUME_TEXT:I = 0x104032b

.field private static final BEEP_DURATION:I = 0x96

.field private static final BLUETOOTH_INCALL_VOLUME_TEXT:I = 0x104032a

.field private static final BLUETOOTH_RVC_MESSAGE_TEXT:I = 0x10404d4

.field private static final BTACC_HFP_RVC_IS_SUPPORTED:I = 0x1

.field private static final BTACC_HFP_RVC_NOT_SUPPORTED:I = 0x0

.field private static final FREE_DELAY:I = 0x2710

.field private static final INCALL_VOLUME_TEXT:I = 0x1040329

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_VOLUME_TEXT:I = 0x1040326

.field private static final MUSIC_VOL_SILENT_PLAYING_THROUGH_BT:I = 0x1040327

.field private static final MUSIC_VOL_SILENT_RINGTONE_SELECTED:I = 0x1040328

.field private static final NOTIFICATION_VOLUME_TEXT:I = 0x104032c

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final RINGTONE_SILENT_TEXT:I = 0x1040490

.field private static final RINGTONE_VOLUME_TEXT:I = 0x1040325

.field private static final RVC_TOAST_DURATION:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final UNKNOWN_VOLUME_TEXT:I = 0x104032d

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private RVCtoast:Landroid/widget/Toast;

.field private last_time_displayed:J

.field private final mAdditionalMessage:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

.field protected mContext:Landroid/content/Context;

.field private final mLargeStreamIcon:Landroid/widget/ImageView;

.field private final mLevel:Landroid/widget/ProgressBar;

.field private final mMessage:Landroid/widget/TextView;

.field private mRingIsSilent:Z

.field private final mRingerSwitchFlag:Z

.field private final mSmallStreamIcon:Landroid/widget/ImageView;

.field private final mToast:Landroid/widget/Toast;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVolumeDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 6
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/VolumePanel;->last_time_displayed:J

    new-instance v2, Landroid/view/VolumePanel$1;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    iput-object v2, p0, Landroid/view/VolumePanel;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    iput v4, p0, Landroid/view/VolumePanel;->mVolumeDirection:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ftr_ringer_switch_enable"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Landroid/view/VolumePanel;->mRingerSwitchFlag:Z

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090070

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .local v1, view:Landroid/view/View;
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    const v2, 0x102025f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const v2, 0x102025e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const v2, 0x1020260

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const v2, 0x1020261

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    new-array v2, v2, [Landroid/media/ToneGenerator;

    iput-object v2, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    new-instance v2, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Landroid/view/VolumePanel;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    invoke-direct {v2, p1, v3}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v2, p0, Landroid/view/VolumePanel;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-void

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 3
    .parameter "streamType"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v1, v0, p1

    monitor-exit p0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLargeIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setRingerIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    iget-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .local v1, ringerMode:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRingerIcon(), ringerMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Landroid/view/VolumePanel;->mRingerSwitchFlag:Z

    if-ne v2, v5, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v0, 0x10801fa

    .local v0, icon:I
    :goto_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .end local v0           #icon:I
    :cond_1
    const v0, 0x10801fd

    .restart local v0       #icon:I
    goto :goto_0

    .end local v0           #icon:I
    :cond_2
    if-nez v1, :cond_3

    const v0, 0x10801fd

    .restart local v0       #icon:I
    goto :goto_0

    .end local v0           #icon:I
    :cond_3
    if-ne v1, v5, :cond_4

    const v0, 0x10801f8

    .restart local v0       #icon:I
    goto :goto_0

    .end local v0           #icon:I
    :cond_4
    const v0, 0x10801fa

    .restart local v0       #icon:I
    goto :goto_0
.end method

.method private setSmallIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const v1, 0x10801ff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const v1, 0x1080201

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onVibrate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .local v0, toneGen:Landroid/media/ToneGenerator;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onShowVolumeChanged(II)V
    .locals 18
    .parameter "streamType"
    .parameter "flags"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v9

    .local v9, index:I
    const v11, 0x104032d

    .local v11, message:I
    const/4 v8, 0x0

    .local v8, additionalMessage:I
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/VolumePanel;->mRingIsSilent:Z

    sget-boolean v14, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_0

    const-string v14, "VolumePanel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onShowVolumeChanged(streamType: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", flags: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), index: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v10

    .local v10, max:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/VolumePanel;->mRingerSwitchFlag:Z

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/VolumePanel;->mRingerSwitchFlag:Z

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VolumePanel;->mVolumeDirection:I

    move v14, v0

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/view/VolumePanel;->setRingerIcon()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioService;->getRingerMode()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_5

    const v11, 0x1040490

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    move-object v14, v0

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    const/4 v14, 0x6

    move/from16 v0, p1

    move v1, v14

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object v14, v0

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object v14, v0

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/bluetooth/BluetoothHeadset;->getHeadsetFeature(I)I

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/VolumePanel;->last_time_displayed:J

    move-wide v14, v0

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/VolumePanel;->last_time_displayed:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x9c4

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10404d4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, RVCmessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object v15, v0

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .local v4, RVCinflater:Landroid/view/LayoutInflater;
    const v14, 0x1090092

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .local v7, RVCview:Landroid/view/View;
    const v14, 0x102000b

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, RVCtext:Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v14, Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-direct {v14, v15}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VolumePanel;->RVCtoast:Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->RVCtoast:Landroid/widget/Toast;

    move-object v14, v0

    invoke-virtual {v14, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->RVCtoast:Landroid/widget/Toast;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Toast;->setDuration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->RVCtoast:Landroid/widget/Toast;

    move-object v14, v0

    const/16 v15, 0x30

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/Toast;->setGravity(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->RVCtoast:Landroid/widget/Toast;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/VolumePanel;->last_time_displayed:J

    .end local v4           #RVCinflater:Landroid/view/LayoutInflater;
    .end local v5           #RVCmessage:Ljava/lang/String;
    .end local v6           #RVCtext:Landroid/widget/TextView;
    .end local v7           #RVCview:Landroid/view/View;
    :cond_4
    :goto_1
    return-void

    :cond_5
    const v11, 0x1040325

    goto/16 :goto_0

    :cond_6
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    const v11, 0x1040329

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/view/VolumePanel;->setRingerIcon()V

    const v11, 0x1040325

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v13

    .local v13, ringuri:Landroid/net/Uri;
    if-nez v13, :cond_2

    const v8, 0x1040328

    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .end local v13           #ringuri:Landroid/net/Uri;
    :pswitch_3
    const v11, 0x1040326

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v14

    if-eqz v14, :cond_7

    const v8, 0x1040327

    const v14, 0x10801fb

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    :pswitch_4
    const v11, 0x104032b

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    :pswitch_5
    const v11, 0x104032c

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v13

    .restart local v13       #ringuri:Landroid/net/Uri;
    if-nez v13, :cond_2

    const v8, 0x1040328

    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .end local v13           #ringuri:Landroid/net/Uri;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object v14, v0

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object v14, v0

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/bluetooth/BluetoothHeadset;->getHeadsetFeature(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    :cond_8
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    const v11, 0x104032a

    const v14, 0x10801fc

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, messageString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    move-object v14, v0

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-nez v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/ProgressBar;->getMax()I

    move-result v14

    if-eq v10, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    move-object v14, v0

    invoke-virtual {v14, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    move-object v14, v0

    invoke-virtual {v14, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Toast;->setDuration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    move-object v14, v0

    const/16 v15, 0x30

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/Toast;->setGravity(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    and-int/lit8 v14, p2, 0x10

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioService;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x4

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x12c

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    move-object v14, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .local v1, numStreamTypes:I
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVolumeDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    iput p1, p0, Landroid/view/VolumePanel;->mVolumeDirection:I

    return-void
.end method
