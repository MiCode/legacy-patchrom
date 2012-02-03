.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x28

.field static final TRANSACTION_acquireWifiLock:I = 0x23

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_configureDirectPeerInterface:I = 0x44

.field static final TRANSACTION_connectPeerWithProvision:I = 0x2f

.field static final TRANSACTION_connectToP2PNetwork:I = 0x2e

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_disconnectWifiDirectPeer:I = 0x38

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xf

.field static final TRANSACTION_getDeviceInfoLists:I = 0x35

.field static final TRANSACTION_getDhcpInfo:I = 0x22

.field static final TRANSACTION_getDirectWpsPin:I = 0x36

.field static final TRANSACTION_getNumAllowedChannels:I = 0x1e

.field static final TRANSACTION_getNumberOfWAPIASCertificate:I = 0x45

.field static final TRANSACTION_getNumberOfWAPIUserCertificate:I = 0x47

.field static final TRANSACTION_getP2PScanResults:I = 0x32

.field static final TRANSACTION_getPER:I = 0x15

.field static final TRANSACTION_getRoamDelta:I = 0x19

.field static final TRANSACTION_getRoamScanPeriod:I = 0x1b

.field static final TRANSACTION_getRoamTrigger:I = 0x17

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getValidChannelCounts:I = 0x20

.field static final TRANSACTION_getWAPIASCertificateName:I = 0x46

.field static final TRANSACTION_getWAPIUserCertificateName:I = 0x48

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2c

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2b

.field static final TRANSACTION_getWifiDirectSetting:I = 0x40

.field static final TRANSACTION_getWifiEnabledState:I = 0x1d

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x26

.field static final TRANSACTION_isDirectConnected:I = 0x3d

.field static final TRANSACTION_isDirectInitialized:I = 0x3a

.field static final TRANSACTION_isGOCreated:I = 0x3b

.field static final TRANSACTION_isGcCreated:I = 0x3c

.field static final TRANSACTION_isMulticastEnabled:I = 0x27

.field static final TRANSACTION_isShowingAccessPointListDialog:I = 0x13

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xe

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x29

.field static final TRANSACTION_releaseWifiLock:I = 0x25

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x21

.field static final TRANSACTION_sendProvisionRequest:I = 0x30

.field static final TRANSACTION_sendProvisionResponse:I = 0x31

.field static final TRANSACTION_setDeviceDiscoveryEnabled:I = 0x34

.field static final TRANSACTION_setDirectAPEnabled:I = 0x39

.field static final TRANSACTION_setNumAllowedChannels:I = 0x1f

.field static final TRANSACTION_setRoamBand:I = 0x1c

.field static final TRANSACTION_setRoamDelta:I = 0x18

.field static final TRANSACTION_setRoamScanPeriod:I = 0x1a

.field static final TRANSACTION_setRoamTrigger:I = 0x16

.field static final TRANSACTION_setShowAccessPointListDialog:I = 0x14

.field static final TRANSACTION_setSupplicantAutoConn:I = 0x42

.field static final TRANSACTION_setSupplicantAutoScan:I = 0x43

.field static final TRANSACTION_setWifiApConfiguration:I = 0x2d

.field static final TRANSACTION_setWifiApEnabled:I = 0x2a

.field static final TRANSACTION_setWifiDirectEnabled:I = 0x33

.field static final TRANSACTION_setWifiDirectPassword:I = 0x3f

.field static final TRANSACTION_setWifiDirectSSID:I = 0x3e

.field static final TRANSACTION_setWifiDirectSetting:I = 0x41

.field static final TRANSACTION_setWifiEnabled:I = 0x10

.field static final TRANSACTION_setWifiEnabledDialog:I = 0x12

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_stopWifiDirectWps:I = 0x37

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x24

.field static final TRANSACTION_wpsCommandCancel:I = 0xd

.field static final TRANSACTION_wpsPbcConnect:I = 0xb

.field static final TRANSACTION_wpsPinConnect:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 39
    :goto_0
    return-object v1

    .line 35
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
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

    const-string v9, "android.net.wifi.IWifiManager"

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 774
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 51
    :sswitch_0
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 52
    goto :goto_0

    .line 56
    :sswitch_1
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 58
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 60
    goto :goto_0

    .line 64
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_2
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 72
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 73
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 75
    goto :goto_0

    .line 70
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 79
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 83
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_1

    move v7, v8

    :goto_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 85
    goto :goto_0

    :cond_1
    move v7, v10

    .line 84
    goto :goto_2

    .line 89
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_4
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v1, v8

    .line 94
    .local v1, _arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 95
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v4, :cond_3

    move v7, v8

    :goto_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 97
    goto :goto_0

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_2
    move v1, v10

    .line 93
    goto :goto_3

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_3
    move v7, v10

    .line 96
    goto :goto_4

    .line 101
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_5
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 105
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v4, :cond_4

    move v7, v8

    :goto_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 107
    goto/16 :goto_0

    :cond_4
    move v7, v10

    .line 106
    goto :goto_5

    .line 111
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_6
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 113
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v4, :cond_5

    move v7, v8

    :goto_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 115
    goto/16 :goto_0

    :cond_5
    move v7, v10

    .line 114
    goto :goto_6

    .line 119
    .end local v4           #_result:Z
    :sswitch_7
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v8

    .line 122
    .local v0, _arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 124
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v10

    .line 121
    goto :goto_7

    .line 128
    :sswitch_8
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 130
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 132
    goto/16 :goto_0

    .line 136
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_9
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()Z

    move-result v4

    .line 138
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v4, :cond_7

    move v7, v8

    :goto_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 140
    goto/16 :goto_0

    :cond_7
    move v7, v10

    .line 139
    goto :goto_8

    .line 144
    .end local v4           #_result:Z
    :sswitch_a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()Z

    move-result v4

    .line 146
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_8

    move v7, v8

    :goto_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 148
    goto/16 :goto_0

    :cond_8
    move v7, v10

    .line 147
    goto :goto_9

    .line 152
    .end local v4           #_result:Z
    :sswitch_b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->wpsPbcConnect()Z

    move-result v4

    .line 154
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_9

    move v7, v8

    :goto_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 156
    goto/16 :goto_0

    :cond_9
    move v7, v10

    .line 155
    goto :goto_a

    .line 160
    .end local v4           #_result:Z
    :sswitch_c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->wpsPinConnect(Ljava/lang/String;)I

    move-result v4

    .line 164
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 166
    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->wpsCommandCancel()Z

    move-result v4

    .line 172
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v4, :cond_a

    move v7, v8

    :goto_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 174
    goto/16 :goto_0

    :cond_a
    move v7, v10

    .line 173
    goto :goto_b

    .line 178
    .end local v4           #_result:Z
    :sswitch_e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()Z

    move-result v4

    .line 180
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v4, :cond_b

    move v7, v8

    :goto_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 182
    goto/16 :goto_0

    :cond_b
    move v7, v10

    .line 181
    goto :goto_c

    .line 186
    .end local v4           #_result:Z
    :sswitch_f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 188
    .local v4, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v4, :cond_c

    .line 190
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d
    move v7, v8

    .line 196
    goto/16 :goto_0

    .line 194
    :cond_c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 200
    .end local v4           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_10
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    move v0, v8

    .line 203
    .local v0, _arg0:Z
    :goto_e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 204
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v4, :cond_e

    move v7, v8

    :goto_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 206
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_d
    move v0, v10

    .line 202
    goto :goto_e

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_e
    move v7, v10

    .line 205
    goto :goto_f

    .line 210
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_11
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->shutdown()Z

    move-result v4

    .line 212
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v4, :cond_f

    move v7, v8

    :goto_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 214
    goto/16 :goto_0

    :cond_f
    move v7, v10

    .line 213
    goto :goto_10

    .line 218
    .end local v4           #_result:Z
    :sswitch_12
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    move v0, v8

    .line 221
    .restart local v0       #_arg0:Z
    :goto_11
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledDialog(Z)Z

    move-result v4

    .line 222
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v4, :cond_11

    move v7, v8

    :goto_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 224
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_10
    move v0, v10

    .line 220
    goto :goto_11

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_11
    move v7, v10

    .line 223
    goto :goto_12

    .line 228
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_13
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isShowingAccessPointListDialog()Z

    move-result v4

    .line 230
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_12

    move v7, v8

    :goto_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 232
    goto/16 :goto_0

    :cond_12
    move v7, v10

    .line 231
    goto :goto_13

    .line 236
    .end local v4           #_result:Z
    :sswitch_14
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    move v0, v8

    .line 239
    .restart local v0       #_arg0:Z
    :goto_14
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setShowAccessPointListDialog(Z)Z

    move-result v4

    .line 240
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_14

    move v7, v8

    :goto_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 242
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_13
    move v0, v10

    .line 238
    goto :goto_14

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_14
    move v7, v10

    .line 241
    goto :goto_15

    .line 246
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_15
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPER()I

    move-result v4

    .line 248
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 250
    goto/16 :goto_0

    .line 254
    .end local v4           #_result:I
    :sswitch_16
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v4

    .line 258
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v4, :cond_15

    move v7, v8

    :goto_16
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 260
    goto/16 :goto_0

    :cond_15
    move v7, v10

    .line 259
    goto :goto_16

    .line 264
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_17
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamTrigger()I

    move-result v4

    .line 266
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 268
    goto/16 :goto_0

    .line 272
    .end local v4           #_result:I
    :sswitch_18
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamDelta(I)Z

    move-result v4

    .line 276
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v4, :cond_16

    move v7, v8

    :goto_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 278
    goto/16 :goto_0

    :cond_16
    move v7, v10

    .line 277
    goto :goto_17

    .line 282
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_19
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamDelta()I

    move-result v4

    .line 284
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 286
    goto/16 :goto_0

    .line 290
    .end local v4           #_result:I
    :sswitch_1a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v4

    .line 294
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v4, :cond_17

    move v7, v8

    :goto_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 296
    goto/16 :goto_0

    :cond_17
    move v7, v10

    .line 295
    goto :goto_18

    .line 300
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_1b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamScanPeriod()I

    move-result v4

    .line 302
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 304
    goto/16 :goto_0

    .line 308
    .end local v4           #_result:I
    :sswitch_1c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamBand(I)Z

    move-result v4

    .line 312
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v4, :cond_18

    move v7, v8

    :goto_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 314
    goto/16 :goto_0

    :cond_18
    move v7, v10

    .line 313
    goto :goto_19

    .line 318
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_1d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 320
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 322
    goto/16 :goto_0

    .line 326
    .end local v4           #_result:I
    :sswitch_1e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumAllowedChannels()I

    move-result v4

    .line 328
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 330
    goto/16 :goto_0

    .line 334
    .end local v4           #_result:I
    :sswitch_1f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    move v1, v8

    .line 339
    .restart local v1       #_arg1:Z
    :goto_1a
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setNumAllowedChannels(IZ)Z

    move-result v4

    .line 340
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v4, :cond_1a

    move v7, v8

    :goto_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 342
    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_19
    move v1, v10

    .line 338
    goto :goto_1a

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_1a
    move v7, v10

    .line 341
    goto :goto_1b

    .line 346
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_20
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getValidChannelCounts()[I

    move-result-object v4

    .line 348
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v7, v8

    .line 350
    goto/16 :goto_0

    .line 354
    .end local v4           #_result:[I
    :sswitch_21
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 356
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v4, :cond_1b

    move v7, v8

    :goto_1c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 358
    goto/16 :goto_0

    :cond_1b
    move v7, v10

    .line 357
    goto :goto_1c

    .line 362
    .end local v4           #_result:Z
    :sswitch_22
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 364
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v4, :cond_1c

    .line 366
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {v4, p3, v8}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    move v7, v8

    .line 372
    goto/16 :goto_0

    .line 370
    :cond_1c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 376
    .end local v4           #_result:Landroid/net/DhcpInfo;
    :sswitch_23
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 380
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 382
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d

    .line 385
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 390
    .local v3, _arg3:Landroid/os/WorkSource;
    :goto_1e
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 391
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v4, :cond_1e

    move v7, v8

    :goto_1f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 393
    goto/16 :goto_0

    .line 388
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :cond_1d
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/WorkSource;
    goto :goto_1e

    .restart local v4       #_result:Z
    :cond_1e
    move v7, v10

    .line 392
    goto :goto_1f

    .line 397
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :sswitch_24
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 401
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f

    .line 402
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 407
    .local v1, _arg1:Landroid/os/WorkSource;
    :goto_20
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 409
    goto/16 :goto_0

    .line 405
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :cond_1f
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/WorkSource;
    goto :goto_20

    .line 413
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :sswitch_25
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 416
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 417
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v4, :cond_20

    move v7, v8

    :goto_21
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 419
    goto/16 :goto_0

    :cond_20
    move v7, v10

    .line 418
    goto :goto_21

    .line 423
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_26
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 426
    goto/16 :goto_0

    .line 430
    :sswitch_27
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 432
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v4, :cond_21

    move v7, v8

    :goto_22
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 434
    goto/16 :goto_0

    :cond_21
    move v7, v10

    .line 433
    goto :goto_22

    .line 438
    .end local v4           #_result:Z
    :sswitch_28
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 442
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 445
    goto/16 :goto_0

    .line 449
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_29
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 452
    goto/16 :goto_0

    .line 456
    :sswitch_2a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22

    .line 459
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 465
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_23

    move v1, v8

    .line 466
    .local v1, _arg1:Z
    :goto_24
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    .line 467
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    if-eqz v4, :cond_24

    move v7, v8

    :goto_25
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 469
    goto/16 :goto_0

    .line 462
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_22
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_23

    :cond_23
    move v1, v10

    .line 465
    goto :goto_24

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_24
    move v7, v10

    .line 468
    goto :goto_25

    .line 473
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_2b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 475
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 477
    goto/16 :goto_0

    .line 481
    .end local v4           #_result:I
    :sswitch_2c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 483
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v4, :cond_25

    .line 485
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    invoke-virtual {v4, p3, v8}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_26
    move v7, v8

    .line 491
    goto/16 :goto_0

    .line 489
    :cond_25
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 495
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_2d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_26

    .line 498
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 503
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_27
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 505
    goto/16 :goto_0

    .line 501
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_26
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_27

    .line 509
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_2e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->connectToP2PNetwork(Ljava/lang/String;)Z

    move-result v4

    .line 513
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v4, :cond_27

    move v7, v8

    :goto_28
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 515
    goto/16 :goto_0

    :cond_27
    move v7, v10

    .line 514
    goto :goto_28

    .line 519
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 525
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v4, :cond_28

    move v7, v8

    :goto_29
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 527
    goto/16 :goto_0

    :cond_28
    move v7, v10

    .line 526
    goto :goto_29

    .line 531
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_30
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 535
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->sendProvisionRequest(ILjava/lang/String;)Z

    move-result v4

    .line 537
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    if-eqz v4, :cond_29

    move v7, v8

    :goto_2a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 539
    goto/16 :goto_0

    :cond_29
    move v7, v10

    .line 538
    goto :goto_2a

    .line 543
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_31
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 549
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 550
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 551
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    if-eqz v4, :cond_2a

    move v7, v8

    :goto_2b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 553
    goto/16 :goto_0

    :cond_2a
    move v7, v10

    .line 552
    goto :goto_2b

    .line 557
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_32
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getP2PScanResults()Ljava/util/List;

    move-result-object v5

    .line 559
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v7, v8

    .line 561
    goto/16 :goto_0

    .line 565
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_33
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2b

    move v0, v8

    .line 569
    .local v0, _arg0:Z
    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2c

    .line 570
    sget-object v7, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 576
    .local v1, _arg1:Landroid/net/wifi/WifiConfiguration;
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    move-result v4

    .line 578
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    if-eqz v4, :cond_2d

    move v7, v8

    :goto_2e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 580
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg2:I
    .end local v4           #_result:Z
    :cond_2b
    move v0, v10

    .line 567
    goto :goto_2c

    .line 573
    .restart local v0       #_arg0:Z
    :cond_2c
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/net/wifi/WifiConfiguration;
    goto :goto_2d

    .restart local v2       #_arg2:I
    .restart local v4       #_result:Z
    :cond_2d
    move v7, v10

    .line 579
    goto :goto_2e

    .line 584
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #_arg2:I
    .end local v4           #_result:Z
    :sswitch_34
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2e

    move v0, v8

    .line 588
    .restart local v0       #_arg0:Z
    :goto_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2f

    move v1, v8

    .line 589
    .local v1, _arg1:Z
    :goto_30
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setDeviceDiscoveryEnabled(ZZ)Z

    move-result v4

    .line 590
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    if-eqz v4, :cond_30

    move v7, v8

    :goto_31
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 592
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_2e
    move v0, v10

    .line 586
    goto :goto_2f

    .restart local v0       #_arg0:Z
    :cond_2f
    move v1, v10

    .line 588
    goto :goto_30

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_30
    move v7, v10

    .line 591
    goto :goto_31

    .line 596
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_35
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDeviceInfoLists()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 600
    goto/16 :goto_0

    .line 604
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_36
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDirectWpsPin()Ljava/lang/String;

    move-result-object v4

    .line 606
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 608
    goto/16 :goto_0

    .line 612
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_37
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifiDirectWps()Z

    move-result v4

    .line 614
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    if-eqz v4, :cond_31

    move v7, v8

    :goto_32
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 616
    goto/16 :goto_0

    :cond_31
    move v7, v10

    .line 615
    goto :goto_32

    .line 620
    .end local v4           #_result:Z
    :sswitch_38
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    move-result v4

    .line 624
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v4, :cond_32

    move v7, v8

    :goto_33
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 626
    goto/16 :goto_0

    :cond_32
    move v7, v10

    .line 625
    goto :goto_33

    .line 630
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_39
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_33

    move v0, v8

    .line 634
    .local v0, _arg0:Z
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setDirectAPEnabled(ZLjava/lang/String;)Z

    move-result v4

    .line 636
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v4, :cond_34

    move v7, v8

    :goto_35
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 638
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :cond_33
    move v0, v10

    .line 632
    goto :goto_34

    .restart local v0       #_arg0:Z
    .restart local v1       #_arg1:Ljava/lang/String;
    .restart local v4       #_result:Z
    :cond_34
    move v7, v10

    .line 637
    goto :goto_35

    .line 642
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_3a
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDirectInitialized()Z

    move-result v4

    .line 644
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v4, :cond_35

    move v7, v8

    :goto_36
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 646
    goto/16 :goto_0

    :cond_35
    move v7, v10

    .line 645
    goto :goto_36

    .line 650
    .end local v4           #_result:Z
    :sswitch_3b
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isGOCreated()Z

    move-result v4

    .line 652
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v4, :cond_36

    move v7, v8

    :goto_37
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 654
    goto/16 :goto_0

    :cond_36
    move v7, v10

    .line 653
    goto :goto_37

    .line 658
    .end local v4           #_result:Z
    :sswitch_3c
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isGcCreated()Z

    move-result v4

    .line 660
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v4, :cond_37

    move v7, v8

    :goto_38
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 662
    goto/16 :goto_0

    :cond_37
    move v7, v10

    .line 661
    goto :goto_38

    .line 666
    .end local v4           #_result:Z
    :sswitch_3d
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDirectConnected()Z

    move-result v4

    .line 668
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v4, :cond_38

    move v7, v8

    :goto_39
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 670
    goto/16 :goto_0

    :cond_38
    move v7, v10

    .line 669
    goto :goto_39

    .line 674
    .end local v4           #_result:Z
    :sswitch_3e
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDirectSSID(Ljava/lang/String;)I

    move-result v4

    .line 678
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 680
    goto/16 :goto_0

    .line 684
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_3f
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDirectPassword(Ljava/lang/String;)I

    move-result v4

    .line 688
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 690
    goto/16 :goto_0

    .line 694
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_40
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiDirectSetting()Z

    move-result v4

    .line 696
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    if-eqz v4, :cond_39

    move v7, v8

    :goto_3a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 698
    goto/16 :goto_0

    :cond_39
    move v7, v10

    .line 697
    goto :goto_3a

    .line 702
    .end local v4           #_result:Z
    :sswitch_41
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3a

    move v0, v8

    .line 705
    .local v0, _arg0:Z
    :goto_3b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDirectSetting(Z)Z

    move-result v4

    .line 706
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    if-eqz v4, :cond_3b

    move v7, v8

    :goto_3c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 708
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_3a
    move v0, v10

    .line 704
    goto :goto_3b

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_3b
    move v7, v10

    .line 707
    goto :goto_3c

    .line 712
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_42
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3c

    move v0, v8

    .line 715
    .restart local v0       #_arg0:Z
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setSupplicantAutoConn(Z)Z

    move-result v4

    .line 716
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    if-eqz v4, :cond_3d

    move v7, v8

    :goto_3e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 718
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_3c
    move v0, v10

    .line 714
    goto :goto_3d

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_3d
    move v7, v10

    .line 717
    goto :goto_3e

    .line 722
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_43
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    move v0, v8

    .line 725
    .restart local v0       #_arg0:Z
    :goto_3f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setSupplicantAutoScan(Z)Z

    move-result v4

    .line 726
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    if-eqz v4, :cond_3f

    move v7, v8

    :goto_40
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 728
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_3e
    move v0, v10

    .line 724
    goto :goto_3f

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_3f
    move v7, v10

    .line 727
    goto :goto_40

    .line 732
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_44
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->configureDirectPeerInterface()V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 735
    goto/16 :goto_0

    .line 739
    :sswitch_45
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumberOfWAPIASCertificate()I

    move-result v4

    .line 741
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 743
    goto/16 :goto_0

    .line 747
    .end local v4           #_result:I
    :sswitch_46
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 750
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getWAPIASCertificateName(I)Ljava/lang/String;

    move-result-object v4

    .line 751
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 753
    goto/16 :goto_0

    .line 757
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_47
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumberOfWAPIUserCertificate()I

    move-result v4

    .line 759
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 761
    goto/16 :goto_0

    .line 765
    .end local v4           #_result:I
    :sswitch_48
    const-string v7, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 768
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getWAPIUserCertificateName(I)Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 771
    goto/16 :goto_0

    .line 47
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
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
