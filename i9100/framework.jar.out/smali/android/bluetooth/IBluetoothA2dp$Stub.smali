.class public abstract Landroid/bluetooth/IBluetoothA2dp$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dp"

.field static final TRANSACTION_allowIncomingConnect:I = 0xc

.field static final TRANSACTION_connectSink:I = 0x1

.field static final TRANSACTION_connectSinkInternal:I = 0xa

.field static final TRANSACTION_disconnectSink:I = 0x2

.field static final TRANSACTION_disconnectSinkInternal:I = 0xb

.field static final TRANSACTION_getConnectedSinks:I = 0x5

.field static final TRANSACTION_getNonDisconnectedSinks:I = 0x6

.field static final TRANSACTION_getSinkPriority:I = 0x9

.field static final TRANSACTION_getSinkState:I = 0x7

.field static final TRANSACTION_isSuspended:I = 0xe

.field static final TRANSACTION_resumeSink:I = 0x4

.field static final TRANSACTION_setSinkPriority:I = 0x8

.field static final TRANSACTION_setSuspended:I = 0xd

.field static final TRANSACTION_suspendSink:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;
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
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothA2dp;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "android.bluetooth.IBluetoothA2dp"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "android.bluetooth.IBluetoothA2dp"

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
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connectSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 61
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 63
    goto :goto_0

    .line 58
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .restart local v2       #_result:Z
    :cond_1
    move v3, v6

    .line 62
    goto :goto_2

    .line 67
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_2
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 75
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnectSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 76
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 78
    goto :goto_0

    .line 73
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .restart local v2       #_result:Z
    :cond_3
    move v3, v6

    .line 77
    goto :goto_4

    .line 82
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_3
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 90
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 91
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_5

    move v3, v4

    :goto_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 93
    goto :goto_0

    .line 88
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .restart local v2       #_result:Z
    :cond_5
    move v3, v6

    .line 92
    goto :goto_6

    .line 97
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_4
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 100
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 105
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 106
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_7

    move v3, v4

    :goto_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 108
    goto/16 :goto_0

    .line 103
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .restart local v2       #_result:Z
    :cond_7
    move v3, v6

    .line 107
    goto :goto_8

    .line 112
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_5
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 114
    .local v2, _result:[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v3, v4

    .line 116
    goto/16 :goto_0

    .line 120
    .end local v2           #_result:[Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getNonDisconnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 122
    .restart local v2       #_result:[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v3, v4

    .line 124
    goto/16 :goto_0

    .line 128
    .end local v2           #_result:[Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 131
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 136
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 137
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 139
    goto/16 :goto_0

    .line 134
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 143
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 146
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 152
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    .line 154
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v2, :cond_a

    move v3, v4

    :goto_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 156
    goto/16 :goto_0

    .line 149
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

    .line 155
    goto :goto_b

    .line 160
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_9
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 163
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 168
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 169
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 171
    goto/16 :goto_0

    .line 166
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:I
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 175
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_a
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 178
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 183
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_d
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 184
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v2, :cond_d

    move v3, v4

    :goto_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 186
    goto/16 :goto_0

    .line 181
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .restart local v2       #_result:Z
    :cond_d
    move v3, v6

    .line 185
    goto :goto_e

    .line 190
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_b
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 193
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 198
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_f
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 199
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v2, :cond_f

    move v3, v4

    :goto_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 201
    goto/16 :goto_0

    .line 196
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .restart local v2       #_result:Z
    :cond_f
    move v3, v6

    .line 200
    goto :goto_10

    .line 205
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_result:Z
    :sswitch_c
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 208
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 214
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    move v1, v4

    .line 215
    .local v1, _arg1:Z
    :goto_12
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2

    .line 216
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v2, :cond_12

    move v3, v4

    :goto_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 218
    goto/16 :goto_0

    .line 211
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    :cond_11
    move v1, v6

    .line 214
    goto :goto_12

    .restart local v1       #_arg1:Z
    .restart local v2       #_result:Z
    :cond_12
    move v3, v6

    .line 217
    goto :goto_13

    .line 222
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :sswitch_d
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    move v0, v4

    .line 225
    .local v0, _arg0:Z
    :goto_14
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setSuspended(Z)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 227
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_13
    move v0, v6

    .line 224
    goto :goto_14

    .line 231
    :sswitch_e
    const-string v3, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isSuspended()Z

    move-result v2

    .line 233
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v2, :cond_14

    move v3, v4

    :goto_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 235
    goto/16 :goto_0

    :cond_14
    move v3, v6

    .line 234
    goto :goto_15

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
