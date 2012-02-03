.class public interface abstract Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
.super Ljava/lang/Object;
.source "IFmTransmitterEventHandler.java"


# static fields
.field public static final AUDIO_CHIRP_STATUS:I = 0x8

.field public static final INTERFERENCE_STATUS_BOTH_HI:I = 0x3

.field public static final INTERFERENCE_STATUS_BOTH_LO:I = 0x0

.field public static final INTERFERENCE_STATUS_INVALID:I = 0xff

.field public static final INTERFERENCE_STATUS_LEFT_HI:I = 0x2

.field public static final INTERFERENCE_STATUS_RIGHT_HI:I = 0x1

.field public static final MUTE_AUDIO_STATUS:I = 0x7

.field public static final SET_AUDIOMODE_STATUS:I = 0x1

.field public static final SET_AUDIO_PATH_STATUS:I = 0x6

.field public static final SET_BANDWIDTH_STATUS:I = 0x4

.field public static final SET_PREEMPHASIS_STATUS:I = 0x5

.field public static final SET_PWR_LEVEL_STATUS:I = 0x0

.field public static final SET_REGION_STATUS:I = 0x3

.field public static final SET_VOLUME_STATUS:I = 0x2


# virtual methods
.method public abstract onBestChannelEvent(II[I[I)V
.end method

.method public abstract onChannelStatusEvent(III)V
.end method

.method public abstract onFmTransmitterDisabledEvent(I)V
.end method

.method public abstract onFmTransmitterEnabledEvent(I)V
.end method

.method public abstract onSetTxFrequencyEvent(II)V
.end method

.method public abstract onSetTxPowerEvent(IZ)V
.end method

.method public abstract onStatusEvent(II)V
.end method
