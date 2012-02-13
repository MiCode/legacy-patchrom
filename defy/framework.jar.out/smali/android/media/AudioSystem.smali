.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final DEVICE_IN_AMBIENT:I = 0x20000

.field public static final DEVICE_IN_AUX_DIGITAL:I = 0x800000

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = 0x200000

.field public static final DEVICE_IN_BUILTIN_MIC1:I = 0x40000

.field public static final DEVICE_IN_BUILTIN_MIC2:I = 0x80000

.field public static final DEVICE_IN_COMMUNICATION:I = 0x10000

.field public static final DEVICE_IN_DEFAULT:I = -0x80000000

.field public static final DEVICE_IN_MIC_ARRAY:I = 0x100000

.field public static final DEVICE_IN_WIRED_HEADSET:I = 0x400000

.field public static final DEVICE_OUT_AUX_ANALOG:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x8000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_HDMI:I = 0x1000

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_TTY:I = 0x2000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xa

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static errorCallbackFromNative(I)V
    .locals 1
    .parameter "error"

    .prologue
    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-interface {v0, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    :cond_0
    return-void
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static getMode()I
    .locals 1

    .prologue
    const/4 v0, -0x2

    return v0
.end method

.method public static final getNumStreamTypes()I
    .locals 1

    .prologue
    const/16 v0, 0xa

    return v0
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getRouting(I)I
    .locals 1
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static native getStreamVolumeIndex(I)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static native isStreamActive(I)Z
.end method

.method public static native muteMicrophone(Z)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;)I
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    return-void
.end method

.method public static native setForceUse(II)I
.end method

.method public static setMode(I)I
    .locals 1
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static native setRingerMode(II)I
.end method

.method public static setRouting(III)I
    .locals 1
    .parameter "mode"
    .parameter "routes"
    .parameter "mask"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static native setStreamVolumeIndex(II)I
.end method
