.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getAllNetworkInfo:I = 0x5

.field static final TRANSACTION_getBackgroundDataSetting:I = 0xb

.field static final TRANSACTION_getInterfaceName:I = 0x19

.field static final TRANSACTION_getLastTetherError:I = 0x11

.field static final TRANSACTION_getMobileDataEnabled:I = 0xd

.field static final TRANSACTION_getNameServers:I = 0x1a

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_getTetherableIfaces:I = 0x13

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x16

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x17

.field static final TRANSACTION_getTetheredIfaces:I = 0x14

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x15

.field static final TRANSACTION_isTetheringSupported:I = 0x12

.field static final TRANSACTION_reportInetCondition:I = 0x18

.field static final TRANSACTION_requestRouteToHost:I = 0xa

.field static final TRANSACTION_setBackgroundDataSetting:I = 0xc

.field static final TRANSACTION_setMobileDataEnabled:I = 0xe

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setRadio:I = 0x7

.field static final TRANSACTION_setRadios:I = 0x6

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x8

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x9

.field static final TRANSACTION_tether:I = 0xf

.field static final TRANSACTION_untether:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "android.net.IConnectivityManager"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v3

    .line 62
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 64
    goto :goto_0

    .line 68
    .end local v3           #_result:I
    :sswitch_3
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 70
    .local v3, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v3, p3, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v4, v5

    .line 78
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 82
    .end local v3           #_result:Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 86
    .restart local v3       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v3, p3, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v4, v5

    .line 94
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 98
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 100
    .local v3, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v4, v5

    .line 102
    goto :goto_0

    .line 106
    .end local v3           #_result:[Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v5

    .line 109
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v3

    .line 110
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 112
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_2
    move v0, v7

    .line 108
    goto :goto_3

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_3
    move v4, v7

    .line 111
    goto :goto_4

    .line 116
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_7
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v5

    .line 121
    .local v1, _arg1:Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v3

    .line 122
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 124
    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v3           #_result:Z
    :cond_4
    move v1, v7

    .line 120
    goto :goto_5

    .restart local v1       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_5
    move v4, v7

    .line 123
    goto :goto_6

    .line 128
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_8
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 135
    .local v2, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    .line 136
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 138
    goto/16 :goto_0

    .line 142
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/os/IBinder;
    .end local v3           #_result:I
    :sswitch_9
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 148
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 150
    goto/16 :goto_0

    .line 154
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_a
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v3

    .line 160
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_6

    move v4, v5

    :goto_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 162
    goto/16 :goto_0

    :cond_6
    move v4, v7

    .line 161
    goto :goto_7

    .line 166
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_b
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getBackgroundDataSetting()Z

    move-result v3

    .line 168
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v3, :cond_7

    move v4, v5

    :goto_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 170
    goto/16 :goto_0

    :cond_7
    move v4, v7

    .line 169
    goto :goto_8

    .line 174
    .end local v3           #_result:Z
    :sswitch_c
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v0, v5

    .line 177
    .local v0, _arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setBackgroundDataSetting(Z)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 179
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v7

    .line 176
    goto :goto_9

    .line 183
    :sswitch_d
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v3

    .line 185
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v3, :cond_9

    move v4, v5

    :goto_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 187
    goto/16 :goto_0

    :cond_9
    move v4, v7

    .line 186
    goto :goto_a

    .line 191
    .end local v3           #_result:Z
    :sswitch_e
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    move v0, v5

    .line 194
    .restart local v0       #_arg0:Z
    :goto_b
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 196
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_a
    move v0, v7

    .line 193
    goto :goto_b

    .line 200
    :sswitch_f
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v3

    .line 204
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 206
    goto/16 :goto_0

    .line 210
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_10
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v3

    .line 214
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 216
    goto/16 :goto_0

    .line 220
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_11
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v3

    .line 224
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 226
    goto/16 :goto_0

    .line 230
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_12
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v3

    .line 232
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v3, :cond_b

    move v4, v5

    :goto_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 234
    goto/16 :goto_0

    :cond_b
    move v4, v7

    .line 233
    goto :goto_c

    .line 238
    .end local v3           #_result:Z
    :sswitch_13
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 242
    goto/16 :goto_0

    .line 246
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_14
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 248
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 250
    goto/16 :goto_0

    .line 254
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_15
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 256
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 258
    goto/16 :goto_0

    .line 262
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_16
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 266
    goto/16 :goto_0

    .line 270
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_17
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 272
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 274
    goto/16 :goto_0

    .line 278
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_18
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 285
    goto/16 :goto_0

    .line 289
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_19
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->getInterfaceName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 297
    goto/16 :goto_0

    .line 301
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v4, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNameServers(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 309
    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
