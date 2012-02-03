.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x1f

.field static final TRANSACTION_adjustStreamVolume:I = 0x3

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x2

.field static final TRANSACTION_adjustVolume:I = 0x1

.field static final TRANSACTION_getMode:I = 0xf

.field static final TRANSACTION_getRingerMode:I = 0xa

.field static final TRANSACTION_getStreamMaxVolume:I = 0x8

.field static final TRANSACTION_getStreamVolume:I = 0x7

.field static final TRANSACTION_getVibrateSetting:I = 0xc

.field static final TRANSACTION_headsetToggle:I = 0x1d

.field static final TRANSACTION_isBluetoothScoOn:I = 0x1a

.field static final TRANSACTION_isEarProtectLimitOn:I = 0x1c

.field static final TRANSACTION_isRadioSpeakerOn:I = 0x18

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x16

.field static final TRANSACTION_loadSoundEffects:I = 0x12

.field static final TRANSACTION_playSoundEffect:I = 0x10

.field static final TRANSACTION_playSoundEffectVolume:I = 0x11

.field static final TRANSACTION_registerMediaButtonEventReceiver:I = 0x21

.field static final TRANSACTION_reloadAudioSettings:I = 0x14

.field static final TRANSACTION_requestAudioFocus:I = 0x1e

.field static final TRANSACTION_setBluetoothA2dpForceOn:I = 0x1b

.field static final TRANSACTION_setBluetoothScoOn:I = 0x19

.field static final TRANSACTION_setMode:I = 0xe

.field static final TRANSACTION_setRadioSpeakerOn:I = 0x17

.field static final TRANSACTION_setRingerMode:I = 0x9

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x15

.field static final TRANSACTION_setStreamMute:I = 0x6

.field static final TRANSACTION_setStreamSolo:I = 0x5

.field static final TRANSACTION_setStreamVolume:I = 0x4

.field static final TRANSACTION_setVibrateSetting:I = 0xb

.field static final TRANSACTION_shouldVibrate:I = 0xd

.field static final TRANSACTION_startBluetoothSco:I = 0x23

.field static final TRANSACTION_stopBluetoothSco:I = 0x24

.field static final TRANSACTION_unloadSoundEffects:I = 0x13

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x20

.field static final TRANSACTION_unregisterMediaButtonEventReceiver:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.media.IAudioService"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 412
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 57
    goto :goto_0

    .line 61
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 70
    goto :goto_0

    .line 74
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 83
    goto :goto_0

    .line 87
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 96
    goto :goto_0

    .line 100
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v7

    .line 106
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 107
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 109
    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :cond_0
    move v2, v9

    .line 104
    goto :goto_1

    .line 113
    .end local v1           #_arg0:I
    :sswitch_6
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v7

    .line 119
    .restart local v2       #_arg1:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 120
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 122
    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :cond_1
    move v2, v9

    .line 117
    goto :goto_2

    .line 126
    .end local v1           #_arg0:I
    :sswitch_7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v6

    .line 130
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 132
    goto/16 :goto_0

    .line 136
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_8
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v6

    .line 140
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 142
    goto/16 :goto_0

    .line 146
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 151
    goto/16 :goto_0

    .line 155
    .end local v1           #_arg0:I
    :sswitch_a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v6

    .line 157
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v6           #_result:I
    :sswitch_b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 170
    goto/16 :goto_0

    .line 174
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v6

    .line 178
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 180
    goto/16 :goto_0

    .line 184
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v6

    .line 188
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v6, :cond_2

    move v0, v7

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 190
    goto/16 :goto_0

    :cond_2
    move v0, v9

    .line 189
    goto :goto_3

    .line 194
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 199
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 201
    goto/16 :goto_0

    .line 205
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v6

    .line 207
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 209
    goto/16 :goto_0

    .line 213
    .end local v6           #_result:I
    :sswitch_10
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    move v0, v7

    .line 217
    goto/16 :goto_0

    .line 221
    .end local v1           #_arg0:I
    :sswitch_11
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 226
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    move v0, v7

    .line 227
    goto/16 :goto_0

    .line 231
    .end local v1           #_arg0:I
    .end local v2           #_arg1:F
    :sswitch_12
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v6

    .line 233
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v6, :cond_3

    move v0, v7

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 235
    goto/16 :goto_0

    :cond_3
    move v0, v9

    .line 234
    goto :goto_4

    .line 239
    .end local v6           #_result:Z
    :sswitch_13
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    move v0, v7

    .line 241
    goto/16 :goto_0

    .line 245
    :sswitch_14
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    move v0, v7

    .line 247
    goto/16 :goto_0

    .line 251
    :sswitch_15
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v7

    .line 254
    .local v1, _arg0:Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 256
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_4
    move v1, v9

    .line 253
    goto :goto_5

    .line 260
    :sswitch_16
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v6

    .line 262
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v6, :cond_5

    move v0, v7

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 264
    goto/16 :goto_0

    :cond_5
    move v0, v9

    .line 263
    goto :goto_6

    .line 268
    .end local v6           #_result:Z
    :sswitch_17
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v7

    .line 271
    .restart local v1       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRadioSpeakerOn(Z)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 273
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_6
    move v1, v9

    .line 270
    goto :goto_7

    .line 277
    :sswitch_18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isRadioSpeakerOn()Z

    move-result v6

    .line 279
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v6, :cond_7

    move v0, v7

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 281
    goto/16 :goto_0

    :cond_7
    move v0, v9

    .line 280
    goto :goto_8

    .line 285
    .end local v6           #_result:Z
    :sswitch_19
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v7

    .line 288
    .restart local v1       #_arg0:Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 290
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_8
    move v1, v9

    .line 287
    goto :goto_9

    .line 294
    :sswitch_1a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v6

    .line 296
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v6, :cond_9

    move v0, v7

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 298
    goto/16 :goto_0

    :cond_9
    move v0, v9

    .line 297
    goto :goto_a

    .line 302
    .end local v6           #_result:Z
    :sswitch_1b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v1, v7

    .line 305
    .restart local v1       #_arg0:Z
    :goto_b
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpForceOn(Z)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 307
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_a
    move v1, v9

    .line 304
    goto :goto_b

    .line 311
    :sswitch_1c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isEarProtectLimitOn()Z

    move-result v6

    .line 313
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v6, :cond_b

    move v0, v7

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 315
    goto/16 :goto_0

    :cond_b
    move v0, v9

    .line 314
    goto :goto_c

    .line 319
    .end local v6           #_result:Z
    :sswitch_1d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v7

    .line 322
    .restart local v1       #_arg0:Z
    :goto_d
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->headsetToggle(Z)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 324
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_c
    move v1, v9

    .line 321
    goto :goto_d

    .line 328
    :sswitch_1e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 336
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 338
    .local v4, _arg3:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v6

    .line 340
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 342
    goto/16 :goto_0

    .line 346
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v4           #_arg3:Landroid/media/IAudioFocusDispatcher;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 350
    .local v1, _arg0:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v6

    .line 352
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 354
    goto/16 :goto_0

    .line 358
    .end local v1           #_arg0:Landroid/media/IAudioFocusDispatcher;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_20
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 363
    goto/16 :goto_0

    .line 367
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_21
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 370
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 375
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 377
    goto/16 :goto_0

    .line 373
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .line 381
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_22
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 384
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 389
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 391
    goto/16 :goto_0

    .line 387
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .line 395
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_23
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 398
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 400
    goto/16 :goto_0

    .line 404
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_24
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 407
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 409
    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
