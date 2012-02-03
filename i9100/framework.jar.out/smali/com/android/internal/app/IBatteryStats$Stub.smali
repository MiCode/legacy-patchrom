.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x28

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x29

.field static final TRANSACTION_getStatistics:I = 0x1

.field static final TRANSACTION_noteBluetoothOff:I = 0x1a

.field static final TRANSACTION_noteBluetoothOn:I = 0x19

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x1b

.field static final TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x21

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x1c

.field static final TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x22

.field static final TRANSACTION_noteInputEvent:I = 0xd

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x12

.field static final TRANSACTION_notePhoneOff:I = 0x10

.field static final TRANSACTION_notePhoneOn:I = 0xf

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x11

.field static final TRANSACTION_notePhoneState:I = 0x13

.field static final TRANSACTION_noteScanWifiLockAcquired:I = 0x1d

.field static final TRANSACTION_noteScanWifiLockAcquiredFromSource:I = 0x23

.field static final TRANSACTION_noteScanWifiLockReleased:I = 0x1e

.field static final TRANSACTION_noteScanWifiLockReleasedFromSource:I = 0x24

.field static final TRANSACTION_noteScreenBrightness:I = 0xb

.field static final TRANSACTION_noteScreenOff:I = 0xc

.field static final TRANSACTION_noteScreenOn:I = 0xa

.field static final TRANSACTION_noteStartGps:I = 0x8

.field static final TRANSACTION_noteStartSensor:I = 0x4

.field static final TRANSACTION_noteStartWakelock:I = 0x2

.field static final TRANSACTION_noteStartWakelockFromSource:I = 0x6

.field static final TRANSACTION_noteStopGps:I = 0x9

.field static final TRANSACTION_noteStopSensor:I = 0x5

.field static final TRANSACTION_noteStopWakelock:I = 0x3

.field static final TRANSACTION_noteStopWakelockFromSource:I = 0x7

.field static final TRANSACTION_noteUserActivity:I = 0xe

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x20

.field static final TRANSACTION_noteWifiMulticastDisabledFromSource:I = 0x26

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x1f

.field static final TRANSACTION_noteWifiMulticastEnabledFromSource:I = 0x25

.field static final TRANSACTION_noteWifiOff:I = 0x15

.field static final TRANSACTION_noteWifiOn:I = 0x14

.field static final TRANSACTION_noteWifiRunning:I = 0x16

.field static final TRANSACTION_noteWifiRunningChanged:I = 0x17

.field static final TRANSACTION_noteWifiStopped:I = 0x18

.field static final TRANSACTION_setBatteryState:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v9, 0x1

    const-string v10, "com.android.internal.app.IBatteryStats"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 503
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v7

    .line 49
    .local v7, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v9

    .line 51
    goto :goto_0

    .line 55
    .end local v7           #_result:[B
    :sswitch_2
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 64
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 66
    goto :goto_0

    .line 70
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :sswitch_3
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 81
    goto :goto_0

    .line 85
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :sswitch_4
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 92
    goto :goto_0

    .line 96
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_5
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 103
    goto :goto_0

    .line 107
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_6
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 116
    .local v1, _arg0:Landroid/os/WorkSource;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 121
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 123
    goto/16 :goto_0

    .line 113
    .end local v1           #_arg0:Landroid/os/WorkSource;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_1

    .line 127
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_7
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 136
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 141
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 143
    goto/16 :goto_0

    .line 133
    .end local v1           #_arg0:Landroid/os/WorkSource;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_2

    .line 147
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_8
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 152
    goto/16 :goto_0

    .line 156
    .end local v1           #_arg0:I
    :sswitch_9
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 161
    goto/16 :goto_0

    .line 165
    .end local v1           #_arg0:I
    :sswitch_a
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOn()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 168
    goto/16 :goto_0

    .line 172
    :sswitch_b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 177
    goto/16 :goto_0

    .line 181
    .end local v1           #_arg0:I
    :sswitch_c
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOff()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 184
    goto/16 :goto_0

    .line 188
    :sswitch_d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInputEvent()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 191
    goto/16 :goto_0

    .line 195
    :sswitch_e
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 202
    goto/16 :goto_0

    .line 206
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_f
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 209
    goto/16 :goto_0

    .line 213
    :sswitch_10
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 216
    goto/16 :goto_0

    .line 220
    :sswitch_11
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrength;

    .line 228
    .local v1, _arg0:Landroid/telephony/SignalStrength;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 230
    goto/16 :goto_0

    .line 226
    .end local v1           #_arg0:Landroid/telephony/SignalStrength;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/telephony/SignalStrength;
    goto :goto_3

    .line 234
    .end local v1           #_arg0:Landroid/telephony/SignalStrength;
    :sswitch_12
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v9

    .line 239
    .local v2, _arg1:Z
    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 241
    goto/16 :goto_0

    .line 238
    .end local v2           #_arg1:Z
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4

    .line 245
    .end local v1           #_arg0:I
    :sswitch_13
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 248
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 250
    goto/16 :goto_0

    .line 254
    .end local v1           #_arg0:I
    :sswitch_14
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 257
    goto/16 :goto_0

    .line 261
    :sswitch_15
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 264
    goto/16 :goto_0

    .line 268
    :sswitch_16
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 276
    .local v1, _arg0:Landroid/os/WorkSource;
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 278
    goto/16 :goto_0

    .line 274
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_5

    .line 282
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_17
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 291
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 297
    .local v2, _arg1:Landroid/os/WorkSource;
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 299
    goto/16 :goto_0

    .line 288
    .end local v1           #_arg0:Landroid/os/WorkSource;
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_6

    .line 295
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/WorkSource;
    goto :goto_7

    .line 303
    .end local v1           #_arg0:Landroid/os/WorkSource;
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :sswitch_18
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 311
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 313
    goto/16 :goto_0

    .line 309
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_8

    .line 317
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_19
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn()V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 320
    goto/16 :goto_0

    .line 324
    :sswitch_1a
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff()V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 327
    goto/16 :goto_0

    .line 331
    :sswitch_1b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 334
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 336
    goto/16 :goto_0

    .line 340
    .end local v1           #_arg0:I
    :sswitch_1c
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 345
    goto/16 :goto_0

    .line 349
    .end local v1           #_arg0:I
    :sswitch_1d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockAcquired(I)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 354
    goto/16 :goto_0

    .line 358
    .end local v1           #_arg0:I
    :sswitch_1e
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockReleased(I)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 363
    goto/16 :goto_0

    .line 367
    .end local v1           #_arg0:I
    :sswitch_1f
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 372
    goto/16 :goto_0

    .line 376
    .end local v1           #_arg0:I
    :sswitch_20
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 381
    goto/16 :goto_0

    .line 385
    .end local v1           #_arg0:I
    :sswitch_21
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 388
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 393
    .local v1, _arg0:Landroid/os/WorkSource;
    :goto_9
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 395
    goto/16 :goto_0

    .line 391
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_9

    .line 399
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_22
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 402
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 407
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_a
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 409
    goto/16 :goto_0

    .line 405
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_a

    .line 413
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_23
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 416
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 421
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 423
    goto/16 :goto_0

    .line 419
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_b

    .line 427
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_24
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 435
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_c
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 437
    goto/16 :goto_0

    .line 433
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_c

    .line 441
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_25
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 444
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 449
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_d
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 451
    goto/16 :goto_0

    .line 447
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_d

    .line 455
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_26
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 458
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 463
    .restart local v1       #_arg0:Landroid/os/WorkSource;
    :goto_e
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 465
    goto/16 :goto_0

    .line 461
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/WorkSource;
    goto :goto_e

    .line 469
    .end local v1           #_arg0:Landroid/os/WorkSource;
    :sswitch_27
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 473
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 475
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 477
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 479
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 481
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 482
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIII)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 484
    goto/16 :goto_0

    .line 488
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    :sswitch_28
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v7

    .line 490
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v9

    .line 492
    goto/16 :goto_0

    .line 496
    .end local v7           #_result:J
    :sswitch_29
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v7

    .line 498
    .restart local v7       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v9

    .line 500
    goto/16 :goto_0

    .line 38
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
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
