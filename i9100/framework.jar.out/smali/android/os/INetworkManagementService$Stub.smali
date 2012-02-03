.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_attachPppd:I = 0x15

.field static final TRANSACTION_connectPeer:I = 0x2d

.field static final TRANSACTION_connectPeerWithProvision:I = 0x2e

.field static final TRANSACTION_createAutonomousGO:I = 0x25

.field static final TRANSACTION_detachPppd:I = 0x16

.field static final TRANSACTION_disableNat:I = 0x13

.field static final TRANSACTION_disconnectPeer:I = 0x30

.field static final TRANSACTION_enableNat:I = 0x12

.field static final TRANSACTION_getDeviceInfoLists:I = 0x29

.field static final TRANSACTION_getDeviceNumbers:I = 0x28

.field static final TRANSACTION_getDirectWpsPin:I = 0x2a

.field static final TRANSACTION_getDnsForwarders:I = 0x10

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getInterfaceRxCounter:I = 0x1e

.field static final TRANSACTION_getInterfaceRxThrottle:I = 0x20

.field static final TRANSACTION_getInterfaceTxCounter:I = 0x1d

.field static final TRANSACTION_getInterfaceTxThrottle:I = 0x21

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x7

.field static final TRANSACTION_getWifiDirectState:I = 0x35

.field static final TRANSACTION_hideMyDevice:I = 0x36

.field static final TRANSACTION_isConnected:I = 0x34

.field static final TRANSACTION_isDirectInitialized:I = 0x31

.field static final TRANSACTION_isGOCreated:I = 0x32

.field static final TRANSACTION_isGcCreated:I = 0x33

.field static final TRANSACTION_isTetheringStarted:I = 0xb

.field static final TRANSACTION_isUsbRNDISStarted:I = 0x19

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0xe

.field static final TRANSACTION_listTtys:I = 0x14

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_sendProvisionDiscoveryToPeer:I = 0x2c

.field static final TRANSACTION_sendProvisionResponse:I = 0x2f

.field static final TRANSACTION_setAccessPoint:I = 0x1c

.field static final TRANSACTION_setDnsForwarders:I = 0xf

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceThrottle:I = 0x1f

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x8

.field static final TRANSACTION_setRoute:I = 0x11

.field static final TRANSACTION_setWiFiDirectSettings:I = 0x22

.field static final TRANSACTION_setWifiDirectPassword:I = 0x38

.field static final TRANSACTION_setWifiDirectSSID:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x6

.field static final TRANSACTION_startAccessPoint:I = 0x1a

.field static final TRANSACTION_startDirectDeviceDiscovery:I = 0x26

.field static final TRANSACTION_startTethering:I = 0x9

.field static final TRANSACTION_startUsbRNDIS:I = 0x17

.field static final TRANSACTION_startWifiDirect:I = 0x23

.field static final TRANSACTION_stopAccessPoint:I = 0x1b

.field static final TRANSACTION_stopDirectDeviceDiscovery:I = 0x27

.field static final TRANSACTION_stopTethering:I = 0xa

.field static final TRANSACTION_stopUsbRNDIS:I = 0x18

.field static final TRANSACTION_stopWifiDirect:I = 0x24

.field static final TRANSACTION_stopWifiDirectWps:I = 0x2b

.field static final TRANSACTION_tetherInterface:I = 0xc

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
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
    const-string v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.os.INetworkManagementService"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 615
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 53
    .local v1, _arg0:Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 55
    goto :goto_0

    .line 59
    .end local v1           #_arg0:Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 62
    .restart local v1       #_arg0:Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 64
    goto :goto_0

    .line 68
    .end local v1           #_arg0:Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 72
    goto :goto_0

    .line 76
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 80
    .local v6, _result:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v6, p3, v8}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v8

    .line 88
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 92
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Landroid/net/InterfaceConfiguration;
    :sswitch_5
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InterfaceConfiguration;

    .line 102
    .local v2, _arg1:Landroid/net/InterfaceConfiguration;
    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 104
    goto :goto_0

    .line 100
    .end local v2           #_arg1:Landroid/net/InterfaceConfiguration;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/InterfaceConfiguration;
    goto :goto_2

    .line 108
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 111
    goto/16 :goto_0

    .line 115
    :sswitch_7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v6

    .line 117
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v6, :cond_2

    move v0, v8

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 119
    goto/16 :goto_0

    :cond_2
    move v0, v10

    .line 118
    goto :goto_3

    .line 123
    .end local v6           #_result:Z
    :sswitch_8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v8

    .line 126
    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 128
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_3
    move v1, v10

    .line 125
    goto :goto_4

    .line 132
    :sswitch_9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 137
    goto/16 :goto_0

    .line 141
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 144
    goto/16 :goto_0

    .line 148
    :sswitch_b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v6

    .line 150
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v6, :cond_4

    move v0, v8

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 152
    goto/16 :goto_0

    :cond_4
    move v0, v10

    .line 151
    goto :goto_5

    .line 156
    .end local v6           #_result:Z
    :sswitch_c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 161
    goto/16 :goto_0

    .line 165
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 170
    goto/16 :goto_0

    .line 174
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 178
    goto/16 :goto_0

    .line 182
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders([Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 187
    goto/16 :goto_0

    .line 191
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_10
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 195
    goto/16 :goto_0

    .line 199
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_11
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v3, v8

    .line 206
    .local v3, _arg2:Z
    :goto_6
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setRoute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 208
    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_5
    move v3, v10

    .line 205
    goto :goto_6

    .line 212
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_12
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 219
    goto/16 :goto_0

    .line 223
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_13
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 230
    goto/16 :goto_0

    .line 234
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_14
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v6

    .line 236
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 238
    goto/16 :goto_0

    .line 242
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 253
    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 255
    goto/16 :goto_0

    .line 259
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_16
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 264
    goto/16 :goto_0

    .line 268
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_17
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->startUsbRNDIS()V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 271
    goto/16 :goto_0

    .line 275
    :sswitch_18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopUsbRNDIS()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 278
    goto/16 :goto_0

    .line 282
    :sswitch_19
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isUsbRNDISStarted()Z

    move-result v6

    .line 284
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v6, :cond_6

    move v0, v8

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 286
    goto/16 :goto_0

    :cond_6
    move v0, v10

    .line 285
    goto :goto_7

    .line 290
    .end local v6           #_result:Z
    :sswitch_1a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 293
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 299
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 304
    goto/16 :goto_0

    .line 296
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_8

    .line 308
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint()V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 311
    goto/16 :goto_0

    .line 315
    :sswitch_1c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 318
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 324
    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 329
    goto/16 :goto_0

    .line 321
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_9

    .line 333
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceTxCounter(Ljava/lang/String;)J

    move-result-wide v6

    .line 337
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v8

    .line 339
    goto/16 :goto_0

    .line 343
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:J
    :sswitch_1e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceRxCounter(Ljava/lang/String;)J

    move-result-wide v6

    .line 347
    .restart local v6       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v8

    .line 349
    goto/16 :goto_0

    .line 353
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:J
    :sswitch_1f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 360
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 362
    goto/16 :goto_0

    .line 366
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_20
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceRxThrottle(Ljava/lang/String;)I

    move-result v6

    .line 370
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 372
    goto/16 :goto_0

    .line 376
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_21
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceTxThrottle(Ljava/lang/String;)I

    move-result v6

    .line 380
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 382
    goto/16 :goto_0

    .line 386
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_22
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 389
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 394
    .local v1, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_a
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setWiFiDirectSettings(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .line 395
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 397
    goto/16 :goto_0

    .line 392
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #_result:I
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_a

    .line 401
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_23
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 404
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 410
    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 411
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startWifiDirect(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v6

    .line 412
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v6, :cond_b

    move v0, v8

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 414
    goto/16 :goto_0

    .line 407
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    .restart local v2       #_arg1:I
    .restart local v6       #_result:Z
    :cond_b
    move v0, v10

    .line 413
    goto :goto_c

    .line 418
    .end local v1           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_24
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopWifiDirect()Z

    move-result v6

    .line 420
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v6, :cond_c

    move v0, v8

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 422
    goto/16 :goto_0

    :cond_c
    move v0, v10

    .line 421
    goto :goto_d

    .line 426
    .end local v6           #_result:Z
    :sswitch_25
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v1, v8

    .line 430
    .local v1, _arg0:Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->createAutonomousGO(ZLjava/lang/String;)Z

    move-result v6

    .line 432
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v6, :cond_e

    move v0, v8

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 434
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :cond_d
    move v1, v10

    .line 428
    goto :goto_e

    .restart local v1       #_arg0:Z
    .restart local v2       #_arg1:Ljava/lang/String;
    .restart local v6       #_result:Z
    :cond_e
    move v0, v10

    .line 433
    goto :goto_f

    .line 438
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_26
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v1, v8

    .line 441
    .restart local v1       #_arg0:Z
    :goto_10
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startDirectDeviceDiscovery(Z)I

    move-result v6

    .line 442
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 444
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:I
    :cond_f
    move v1, v10

    .line 440
    goto :goto_10

    .line 448
    :sswitch_27
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopDirectDeviceDiscovery()I

    move-result v6

    .line 450
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 452
    goto/16 :goto_0

    .line 456
    .end local v6           #_result:I
    :sswitch_28
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDeviceNumbers()I

    move-result v6

    .line 458
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 460
    goto/16 :goto_0

    .line 464
    .end local v6           #_result:I
    :sswitch_29
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDeviceInfoLists()Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 468
    goto/16 :goto_0

    .line 472
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDirectWpsPin()Ljava/lang/String;

    move-result-object v6

    .line 474
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 476
    goto/16 :goto_0

    .line 480
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopWifiDirectWps()I

    move-result v6

    .line 482
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 484
    goto/16 :goto_0

    .line 488
    .end local v6           #_result:I
    :sswitch_2c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 492
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 493
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->sendProvisionDiscoveryToPeer(ILjava/lang/String;)I

    move-result v6

    .line 494
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 496
    goto/16 :goto_0

    .line 500
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_2d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->connectPeer(Ljava/lang/String;)I

    move-result v6

    .line 504
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 506
    goto/16 :goto_0

    .line 510
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_2e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 516
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 518
    goto/16 :goto_0

    .line 522
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_2f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 528
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 530
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 532
    goto/16 :goto_0

    .line 536
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_30
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->disconnectPeer(Ljava/lang/String;)I

    move-result v6

    .line 540
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 542
    goto/16 :goto_0

    .line 546
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_31
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isDirectInitialized()Z

    move-result v6

    .line 548
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v6, :cond_10

    move v0, v8

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 550
    goto/16 :goto_0

    :cond_10
    move v0, v10

    .line 549
    goto :goto_11

    .line 554
    .end local v6           #_result:Z
    :sswitch_32
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isGOCreated()Z

    move-result v6

    .line 556
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v6, :cond_11

    move v0, v8

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 558
    goto/16 :goto_0

    :cond_11
    move v0, v10

    .line 557
    goto :goto_12

    .line 562
    .end local v6           #_result:Z
    :sswitch_33
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isGcCreated()Z

    move-result v6

    .line 564
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v6, :cond_12

    move v0, v8

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 566
    goto/16 :goto_0

    :cond_12
    move v0, v10

    .line 565
    goto :goto_13

    .line 570
    .end local v6           #_result:Z
    :sswitch_34
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isConnected()Z

    move-result v6

    .line 572
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v6, :cond_13

    move v0, v8

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 574
    goto/16 :goto_0

    :cond_13
    move v0, v10

    .line 573
    goto :goto_14

    .line 578
    .end local v6           #_result:Z
    :sswitch_35
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getWifiDirectState()I

    move-result v6

    .line 580
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 582
    goto/16 :goto_0

    .line 586
    .end local v6           #_result:I
    :sswitch_36
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v1, v8

    .line 589
    .local v1, _arg0:Z
    :goto_15
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->hideMyDevice(Z)I

    move-result v6

    .line 590
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 592
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:I
    :cond_14
    move v1, v10

    .line 588
    goto :goto_15

    .line 596
    :sswitch_37
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setWifiDirectSSID(Ljava/lang/String;)I

    move-result v6

    .line 600
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 602
    goto/16 :goto_0

    .line 606
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_38
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setWifiDirectPassword(Ljava/lang/String;)I

    move-result v6

    .line 610
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 612
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
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
