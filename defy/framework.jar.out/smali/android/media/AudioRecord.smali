.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioRecord-Java"


# instance fields
.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:I

.field private mNativeRecorderInJavaObj:I

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mRecordSource:I

.field private mRecordingState:I

.field private mRecordingStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mState:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 9
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5622

    iput v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iput v8, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iput v3, p0, Landroid/media/AudioRecord;->mChannels:I

    iput v3, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    iput v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    iput v8, p0, Landroid/media/AudioRecord;->mRecordingState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    iput-object v2, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    iput-object v2, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    iput-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    iput v1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    iput v8, p0, Landroid/media/AudioRecord;->mRecordingState:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/AudioRecord;->audioParamCheck(IIII)V

    invoke-direct {p0, p5}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v2, p0, Landroid/media/AudioRecord;->mRecordSource:I

    iget v3, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iget v4, p0, Landroid/media/AudioRecord;->mChannels:I

    iget v5, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v6, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;IIIII)I

    move-result v7

    .local v7, initResult:I
    if-eqz v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when initializing native AudioRecord object."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput v8, p0, Landroid/media/AudioRecord;->mState:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 5
    .parameter "audioBufferSize"

    .prologue
    const/4 v4, 0x1

    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v2, v4

    :goto_0
    mul-int v0, v1, v2

    .local v0, frameSizeInBytes:I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    if-ge p1, v4, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #frameSizeInBytes:I
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .restart local v0       #frameSizeInBytes:I
    :cond_2
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    return-void
.end method

.method private audioParamCheck(IIII)V
    .locals 3
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0xbb80

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iput p3, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    sparse-switch p3, :sswitch_data_0

    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iput v1, p0, Landroid/media/AudioRecord;->mChannels:I

    iput v1, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    :goto_0
    packed-switch p4, :pswitch_data_0

    iput v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iput v2, p0, Landroid/media/AudioRecord;->mChannelCount:I

    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    goto :goto_0

    :pswitch_0
    iput v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    :goto_1
    return-void

    :pswitch_1
    iput p4, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v0, 0x0

    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_0

    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v2, v3

    :goto_0
    return v2

    :sswitch_0
    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .local v1, size:I
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "AudioRecord-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioRecord ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "AudioRecord-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioRecord ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BII)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;I)I
.end method

.method private final native native_read_in_short_array([SII)I
.end method

.method private final native native_release()V
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIII)I
.end method

.method private final native native_start()I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "audiorecord_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .local v1, recorder:Landroid/media/AudioRecord;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_finalize()V

    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .parameter "audioBuffer"
    .parameter "sizeInBytes"

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_2

    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_byte_array([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([SII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_short_array([SII)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .parameter "markerInFrames"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .parameter "periodInFrames"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .parameter "listener"
    .parameter "handler"

    .prologue
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v1, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_start()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
