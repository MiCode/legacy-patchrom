.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_acceptIncomingConnect:I = 0xc

.field static final TRANSACTION_cancelConnectThread:I = 0xe

.field static final TRANSACTION_connectHeadset:I = 0x3

.field static final TRANSACTION_connectHeadsetInternal:I = 0xf

.field static final TRANSACTION_createIncomingConnect:I = 0xb

.field static final TRANSACTION_disconnectHeadset:I = 0x4

.field static final TRANSACTION_disconnectHeadsetInternal:I = 0x10

.field static final TRANSACTION_getBatteryUsageHint:I = 0xa

.field static final TRANSACTION_getCurrentHeadset:I = 0x2

.field static final TRANSACTION_getPriority:I = 0x9

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_isConnected:I = 0x5

.field static final TRANSACTION_rejectIncomingConnect:I = 0xd

.field static final TRANSACTION_setPriority:I = 0x8

.field static final TRANSACTION_startVirtualVoiceCall:I = 0x11

.field static final TRANSACTION_startVoiceRecognition:I = 0x6

.field static final TRANSACTION_stopVirtualVoiceCall:I = 0x12

.field static final TRANSACTION_stopVoiceRecognition:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothHeadset"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.bluetooth.IBluetoothHeadset"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 61
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 63
    goto :goto_0

    .line 58
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 67
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 69
    .local v2, _result:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v2, p3, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v3, v4

    .line 77
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 81
    .end local v2           #_result:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 89
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 90
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 92
    goto :goto_0

    .line 87
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .restart local v2       #_result:Z
    :cond_3
    move v3, v6

    .line 91
    goto :goto_4

    .line 96
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_4
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 104
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 106
    goto/16 :goto_0

    .line 102
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 110
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 118
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 119
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v2, :cond_6

    move v3, v4

    :goto_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 121
    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .restart local v2       #_result:Z
    :cond_6
    move v3, v6

    .line 120
    goto :goto_7

    .line 125
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition()Z

    move-result v2

    .line 127
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v2, :cond_7

    move v3, v4

    :goto_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 129
    goto/16 :goto_0

    :cond_7
    move v3, v6

    .line 128
    goto :goto_8

    .line 133
    .end local v2           #_result:Z
    :sswitch_7
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition()Z

    move-result v2

    .line 135
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_8

    move v3, v4

    :goto_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 137
    goto/16 :goto_0

    :cond_8
    move v3, v6

    .line 136
    goto :goto_9

    .line 141
    .end local v2           #_result:Z
    :sswitch_8
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 144
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 150
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 152
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v2, :cond_a

    move v3, v4

    :goto_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 154
    goto/16 :goto_0

    .line 147
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .restart local v1       #_arg1:I
    .restart local v2       #_result:Z
    :cond_a
    move v3, v6

    .line 153
    goto :goto_b

    .line 158
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_9
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 161
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 166
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 167
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 169
    goto/16 :goto_0

    .line 164
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:I
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 173
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_a
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getBatteryUsageHint()I

    move-result v2

    .line 175
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 177
    goto/16 :goto_0

    .line 181
    .end local v2           #_result:I
    :sswitch_b
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 184
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 189
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_d
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 190
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v2, :cond_d

    move v3, v4

    :goto_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 192
    goto/16 :goto_0

    .line 187
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .restart local v2       #_result:Z
    :cond_d
    move v3, v6

    .line 191
    goto :goto_e

    .line 196
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_c
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 199
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 204
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_f
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 205
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v2, :cond_f

    move v3, v4

    :goto_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 207
    goto/16 :goto_0

    .line 202
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .restart local v2       #_result:Z
    :cond_f
    move v3, v6

    .line 206
    goto :goto_10

    .line 211
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_d
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 214
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 219
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_11
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 220
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v2, :cond_11

    move v3, v4

    :goto_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 222
    goto/16 :goto_0

    .line 217
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .restart local v2       #_result:Z
    :cond_11
    move v3, v6

    .line 221
    goto :goto_12

    .line 226
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_e
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->cancelConnectThread()Z

    move-result v2

    .line 228
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v2, :cond_12

    move v3, v4

    :goto_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 230
    goto/16 :goto_0

    :cond_12
    move v3, v6

    .line 229
    goto :goto_13

    .line 234
    .end local v2           #_result:Z
    :sswitch_f
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 237
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 242
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_14
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 243
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v2, :cond_14

    move v3, v4

    :goto_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 245
    goto/16 :goto_0

    .line 240
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_13
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .restart local v2       #_result:Z
    :cond_14
    move v3, v6

    .line 244
    goto :goto_15

    .line 249
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_10
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 252
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 257
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_16
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 258
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v2, :cond_16

    move v3, v4

    :goto_17
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 260
    goto/16 :goto_0

    .line 255
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .restart local v2       #_result:Z
    :cond_16
    move v3, v6

    .line 259
    goto :goto_17

    .line 264
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_11
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVirtualVoiceCall()Z

    move-result v2

    .line 266
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v2, :cond_17

    move v3, v4

    :goto_18
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 268
    goto/16 :goto_0

    :cond_17
    move v3, v6

    .line 267
    goto :goto_18

    .line 272
    .end local v2           #_result:Z
    :sswitch_12
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVirtualVoiceCall()Z

    move-result v2

    .line 274
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v2, :cond_18

    move v3, v4

    :goto_19
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 276
    goto/16 :goto_0

    :cond_18
    move v3, v6

    .line 275
    goto :goto_19

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
