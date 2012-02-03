.class public interface abstract Lcom/immersion/ImmVibeAPI;
.super Ljava/lang/Object;
.source "ImmVibeAPI.java"


# static fields
.field public static final VIBE_BUILTINEFFECT_LONG:I = 0xb

.field public static final VIBE_BUILTINEFFECT_LONG_ON_LONG_OFF:I = 0x8

.field public static final VIBE_BUILTINEFFECT_LONG_ON_MEDIUM_OFF:I = 0x7

.field public static final VIBE_BUILTINEFFECT_LONG_ON_SHORT_OFF:I = 0x6

.field public static final VIBE_BUILTINEFFECT_MEDIUM:I = 0xa

.field public static final VIBE_BUILTINEFFECT_MEDIUM_ON_LONG_OFF:I = 0x5

.field public static final VIBE_BUILTINEFFECT_MEDIUM_ON_MEDIUM_OFF:I = 0x4

.field public static final VIBE_BUILTINEFFECT_MEDIUM_ON_SHORT_OFF:I = 0x3

.field public static final VIBE_BUILTINEFFECT_SHORT:I = 0x9

.field public static final VIBE_BUILTINEFFECT_SHORT_ON_LONG_OFF:I = 0x2

.field public static final VIBE_BUILTINEFFECT_SHORT_ON_MEDIUM_OFF:I = 0x1

.field public static final VIBE_BUILTINEFFECT_SHORT_ON_SHORT_OFF:I = 0x0

.field public static final VIBE_DEFAULT_STYLE:I = 0x1

.field public static final VIBE_DEFAULT_WAVETYPE:I = 0x10

.field public static final VIBE_DEVACTUATORTYPE_BLDC:I = 0x1

.field public static final VIBE_DEVACTUATORTYPE_ERM:I = 0x0

.field public static final VIBE_DEVACTUATORTYPE_LRA:I = 0x2

.field public static final VIBE_DEVACTUATORTYPE_PIEZO:I = 0x4

.field public static final VIBE_DEVACTUATORTYPE_PIEZO_WAVE:I = 0x4

.field public static final VIBE_DEVCAPTYPE_ACTUATOR_TYPE:I = 0x3

.field public static final VIBE_DEVCAPTYPE_APIVERSIONNUMBER:I = 0xc

.field public static final VIBE_DEVCAPTYPE_DEVICE_CATEGORY:I = 0x0

.field public static final VIBE_DEVCAPTYPE_DEVICE_NAME:I = 0xa

.field public static final VIBE_DEVCAPTYPE_EDITION_LEVEL:I = 0xf

.field public static final VIBE_DEVCAPTYPE_HANDSET_INDEX:I = 0x11

.field public static final VIBE_DEVCAPTYPE_MAX_EFFECT_DURATION:I = 0x8

.field public static final VIBE_DEVCAPTYPE_MAX_ENVELOPE_TIME:I = 0xb

.field public static final VIBE_DEVCAPTYPE_MAX_IVT_SIZE:I = 0xe

.field public static final VIBE_DEVCAPTYPE_MAX_IVT_SIZE_TETHERED:I = 0xd

.field public static final VIBE_DEVCAPTYPE_MAX_NESTED_REPEATS:I = 0x1

.field public static final VIBE_DEVCAPTYPE_MAX_PERIOD:I = 0x7

.field public static final VIBE_DEVCAPTYPE_MIN_PERIOD:I = 0x6

.field public static final VIBE_DEVCAPTYPE_NUM_ACTUATORS:I = 0x2

.field public static final VIBE_DEVCAPTYPE_NUM_EFFECT_SLOTS:I = 0x4

.field public static final VIBE_DEVCAPTYPE_SUPPORTED_EFFECTS:I = 0x9

.field public static final VIBE_DEVCAPTYPE_SUPPORTED_STYLES:I = 0x5

.field public static final VIBE_DEVCAPTYPE_SUPPORTED_WAVE_TYPES:I = 0x10

.field public static final VIBE_DEVICECATEGORY_COMPOSITE:I = 0x6

.field public static final VIBE_DEVICECATEGORY_EMBEDDED:I = 0x3

.field public static final VIBE_DEVICECATEGORY_IFC:I = 0x0

.field public static final VIBE_DEVICECATEGORY_IMMERSION_USB:I = 0x5

.field public static final VIBE_DEVICECATEGORY_IMPULSE:I = 0x1

.field public static final VIBE_DEVICECATEGORY_TETHERED:I = 0x4

.field public static final VIBE_DEVICECATEGORY_VIRTUAL:I = 0x2

.field public static final VIBE_DEVICESTATE_ATTACHED:I = 0x1

.field public static final VIBE_DEVICESTATE_BUSY:I = 0x2

.field public static final VIBE_DEVPRIORITY_DEFAULT:I = 0x0

.field public static final VIBE_DEVPROPTYPE_DISABLE_EFFECTS:I = 0x2

.field public static final VIBE_DEVPROPTYPE_LICENSE_KEY:I = 0x0

.field public static final VIBE_DEVPROPTYPE_MASTERSTRENGTH:I = 0x4

.field public static final VIBE_DEVPROPTYPE_PRIORITY:I = 0x1

.field public static final VIBE_DEVPROPTYPE_STRENGTH:I = 0x3

.field public static final VIBE_EDITION_3000:I = 0xbb8

.field public static final VIBE_EDITION_4000:I = 0xfa0

.field public static final VIBE_EDITION_5000:I = 0x1388

.field public static final VIBE_EFFECT_STATE_NOT_PLAYING:I = 0x0

.field public static final VIBE_EFFECT_STATE_PAUSED:I = 0x2

.field public static final VIBE_EFFECT_STATE_PLAYING:I = 0x1

.field public static final VIBE_EFFECT_TYPE_MAGSWEEP:I = 0x1

.field public static final VIBE_EFFECT_TYPE_PERIODIC:I = 0x0

.field public static final VIBE_EFFECT_TYPE_STREAMING:I = 0x3

.field public static final VIBE_EFFECT_TYPE_TIMELINE:I = 0x2

.field public static final VIBE_EFFECT_TYPE_WAVEFORM:I = 0x4

.field public static final VIBE_ELEMTYPE_MAGSWEEP:I = 0x1

.field public static final VIBE_ELEMTYPE_PERIODIC:I = 0x0

.field public static final VIBE_ELEMTYPE_REPEAT:I = 0x2

.field public static final VIBE_ELEMTYPE_WAVEFORM:I = 0x3

.field public static final VIBE_E_ALREADY_INITIALIZED:I = -0x1

.field public static final VIBE_E_DEVICE_NEEDS_LICENSE:I = -0x8

.field public static final VIBE_E_FAIL:I = -0x4

.field public static final VIBE_E_INCOMPATIBLE_CAPABILITY_TYPE:I = -0x6

.field public static final VIBE_E_INCOMPATIBLE_EFFECT_TYPE:I = -0x5

.field public static final VIBE_E_INCOMPATIBLE_PROPERTY_TYPE:I = -0x7

.field public static final VIBE_E_INSUFFICIENT_PRIORITY:I = -0xb

.field public static final VIBE_E_INVALID_ARGUMENT:I = -0x3

.field public static final VIBE_E_NOT_ENOUGH_MEMORY:I = -0x9

.field public static final VIBE_E_NOT_INITIALIZED:I = -0x2

.field public static final VIBE_E_SERVICE_BUSY:I = -0xc

.field public static final VIBE_E_SERVICE_NOT_RUNNING:I = -0xa

.field public static final VIBE_INVALID_DEVICE_HANDLE_VALUE:I = -0x1

.field public static final VIBE_INVALID_EFFECT_HANDLE_VALUE:I = -0x1

.field public static final VIBE_INVALID_INDEX:I = -0x1

.field public static final VIBE_MAGSWEEP_EFFECT_SUPPORT:I = 0x2

.field public static final VIBE_MAX_CAPABILITY_STRING_LENGTH:I = 0x40

.field public static final VIBE_MAX_DEVICE_NAME_LENGTH:I = 0x40

.field public static final VIBE_MAX_DEVICE_PRIORITY:I = 0xf

.field public static final VIBE_MAX_DEV_DEVICE_PRIORITY:I = 0x7

.field public static final VIBE_MAX_EFFECT_NAME_LENGTH:I = 0x80

.field public static final VIBE_MAX_LOGICAL_DEVICE_COUNT:I = 0x10

.field public static final VIBE_MAX_MAGNITUDE:I = 0x2710

.field public static final VIBE_MAX_OEM_DEVICE_PRIORITY:I = 0xf

.field public static final VIBE_MAX_PROPERTY_STRING_LENGTH:I = 0x40

.field public static final VIBE_MAX_STREAMING_SAMPLE_SIZE:I = 0xff

.field public static final VIBE_MIN_DEVICE_PRIORITY:I = 0x0

.field public static final VIBE_MIN_MAGNITUDE:I = 0x0

.field public static final VIBE_PERIODIC_EFFECT_SUPPORT:I = 0x1

.field public static final VIBE_PERIOD_RESOLUTION_MICROSECOND:I = -0x80000000

.field public static final VIBE_REPEAT_COUNT_INFINITE:I = 0xff

.field public static final VIBE_STREAMING_EFFECT_SUPPORT:I = 0x8

.field public static final VIBE_STYLE_MASK:I = 0xf

.field public static final VIBE_STYLE_SHARP:I = 0x2

.field public static final VIBE_STYLE_SHARP_SUPPORT:I = 0x4

.field public static final VIBE_STYLE_SMOOTH:I = 0x0

.field public static final VIBE_STYLE_SMOOTH_SUPPORT:I = 0x1

.field public static final VIBE_STYLE_STRONG:I = 0x1

.field public static final VIBE_STYLE_STRONG_SUPPORT:I = 0x2

.field public static final VIBE_STYLE_SUPPORT_MASK:I = 0xffff

.field public static final VIBE_S_FALSE:I = 0x0

.field public static final VIBE_S_SUCCESS:I = 0x0

.field public static final VIBE_S_TRUE:I = 0x1

.field public static final VIBE_TIMELINE_EFFECT_SUPPORT:I = 0x4

.field public static final VIBE_TIME_INFINITE:I = 0x7fffffff

.field public static final VIBE_WAVEFORM_EFFECT_SUPPORT:I = 0x10

.field public static final VIBE_WAVETYPE_MASK:I = 0xf0

.field public static final VIBE_WAVETYPE_SAWTOOTHDOWN:I = 0x50

.field public static final VIBE_WAVETYPE_SAWTOOTHDOWN_SUPPORT:I = 0x200000

.field public static final VIBE_WAVETYPE_SAWTOOTHUP:I = 0x40

.field public static final VIBE_WAVETYPE_SAWTOOTHUP_SUPPORT:I = 0x100000

.field public static final VIBE_WAVETYPE_SHIFT:I = 0x4

.field public static final VIBE_WAVETYPE_SINE:I = 0x30

.field public static final VIBE_WAVETYPE_SINE_SUPPORT:I = 0x80000

.field public static final VIBE_WAVETYPE_SQUARE:I = 0x10

.field public static final VIBE_WAVETYPE_SQUARE_SUPPORT:I = 0x20000

.field public static final VIBE_WAVETYPE_SUPPORT_MASK:I = -0x10000

.field public static final VIBE_WAVETYPE_TRIANGLE:I = 0x20

.field public static final VIBE_WAVETYPE_TRIANGLE_SUPPORT:I = 0x40000

.field public static final VIBE_W_EFFECTS_DISABLED:I = 0x3

.field public static final VIBE_W_INSUFFICIENT_PRIORITY:I = 0x2

.field public static final VIBE_W_NOT_PAUSED:I = 0x4

.field public static final VIBE_W_NOT_PLAYING:I = 0x1


# virtual methods
.method public abstract closeDevice(I)V
.end method

.method public abstract createStreamingEffect(I)I
.end method

.method public abstract deleteIVTFile(Ljava/lang/String;)V
.end method

.method public abstract destroyStreamingEffect(II)V
.end method

.method public abstract getBuiltInEffects()[B
.end method

.method public abstract getDeviceCapabilityBool(II)Z
.end method

.method public abstract getDeviceCapabilityInt32(II)I
.end method

.method public abstract getDeviceCapabilityString(II)Ljava/lang/String;
.end method

.method public abstract getDeviceCount()I
.end method

.method public abstract getDevicePropertyBool(II)Z
.end method

.method public abstract getDevicePropertyInt32(II)I
.end method

.method public abstract getDevicePropertyString(II)Ljava/lang/String;
.end method

.method public abstract getDeviceState(I)I
.end method

.method public abstract getEffectState(II)I
.end method

.method public abstract getIVTEffectCount([B)I
.end method

.method public abstract getIVTEffectDuration([BI)I
.end method

.method public abstract getIVTEffectIndexFromName([BLjava/lang/String;)I
.end method

.method public abstract getIVTEffectName([BI)Ljava/lang/String;
.end method

.method public abstract getIVTEffectType([BI)I
.end method

.method public abstract getIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
.end method

.method public abstract getIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
.end method

.method public abstract getIVTSize([B)I
.end method

.method public abstract initialize()V
.end method

.method public abstract initializeIVTBuffer(I)[B
.end method

.method public abstract insertIVTElement([BI[I[B)[B
.end method

.method public abstract modifyPlayingMagSweepEffect(IIIIIIIII)V
.end method

.method public abstract modifyPlayingPeriodicEffect(IIIIIIIIII)V
.end method

.method public abstract openCompositeDevice(I)I
.end method

.method public abstract openDevice(I)I
.end method

.method public abstract pausePlayingEffect(II)V
.end method

.method public abstract playIVTEffect(I[BI)I
.end method

.method public abstract playIVTEffectRepeat(I[BIB)I
.end method

.method public abstract playMagSweepEffect(IIIIIIII)I
.end method

.method public abstract playPeriodicEffect(IIIIIIIII)I
.end method

.method public abstract playStreamingSample(II[BI)V
.end method

.method public abstract playStreamingSampleWithOffset(II[BII)V
.end method

.method public abstract playWaveformEffect(I[BIIII)I
.end method

.method public abstract readIVTElement([BII)[I
.end method

.method public abstract readIVTElementData([BII)[B
.end method

.method public abstract removeIVTElement([BII)[B
.end method

.method public abstract resumePausedEffect(II)V
.end method

.method public abstract saveIVTFile([BLjava/lang/String;)V
.end method

.method public abstract setDevicePropertyBool(IIZ)V
.end method

.method public abstract setDevicePropertyInt32(III)V
.end method

.method public abstract setDevicePropertyString(IILjava/lang/String;)V
.end method

.method public abstract stopAllPlayingEffects(I)V
.end method

.method public abstract stopPlayingEffect(II)V
.end method

.method public abstract terminate()V
.end method
