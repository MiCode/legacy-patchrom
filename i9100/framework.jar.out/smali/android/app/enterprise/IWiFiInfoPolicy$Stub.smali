.class public abstract Landroid/app/enterprise/IWiFiInfoPolicy$Stub;
.super Landroid/os/Binder;
.source "IWiFiInfoPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IWiFiInfoPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IWiFiInfoPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IWiFiInfoPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IWiFiInfoPolicy"

.field static final TRANSACTION_getAnonymousIdValue:I = 0xf

.field static final TRANSACTION_getBSSID:I = 0x14

.field static final TRANSACTION_getCaCertValue:I = 0xb

.field static final TRANSACTION_getClientCertValue:I = 0xc

.field static final TRANSACTION_getEapValue:I = 0x9

.field static final TRANSACTION_getHiddenSSID:I = 0x13

.field static final TRANSACTION_getIdentityValue:I = 0xe

.field static final TRANSACTION_getIpAddress:I = 0x15

.field static final TRANSACTION_getLinkSpeed:I = 0x16

.field static final TRANSACTION_getMacAddress:I = 0x11

.field static final TRANSACTION_getNetworkId:I = 0x17

.field static final TRANSACTION_getPasswordValue:I = 0x10

.field static final TRANSACTION_getPhaseValue:I = 0xa

.field static final TRANSACTION_getPrivateKeyValue:I = 0xd

.field static final TRANSACTION_getRssi:I = 0x18

.field static final TRANSACTION_getSSID:I = 0x12

.field static final TRANSACTION_getWifiState:I = 0x19

.field static final TRANSACTION_setAnonymousIdValue:I = 0x7

.field static final TRANSACTION_setCaCertValue:I = 0x3

.field static final TRANSACTION_setClientCertValue:I = 0x4

.field static final TRANSACTION_setEapValue:I = 0x1

.field static final TRANSACTION_setIdentityValue:I = 0x6

.field static final TRANSACTION_setPasswordValue:I = 0x8

.field static final TRANSACTION_setPhaseValue:I = 0x2

.field static final TRANSACTION_setPrivateKeyValue:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWiFiInfoPolicy;
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
    const-string v1, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IWiFiInfoPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IWiFiInfoPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IWiFiInfoPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    const-string v4, "android.app.enterprise.IWiFiInfoPolicy"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->setEapValue(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 55
    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->setPhaseValue(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 64
    goto :goto_0

    .line 68
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->setCaCertValue(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 73
    goto :goto_0

    .line 77
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->setClientCertValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->setPrivateKeyValue(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 91
    goto :goto_0

    .line 95
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->setIdentityValue(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 100
    goto :goto_0

    .line 104
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->setAnonymousIdValue(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 109
    goto :goto_0

    .line 113
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->setPasswordValue(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 118
    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getEapValue()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 126
    goto/16 :goto_0

    .line 130
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getPhaseValue()Ljava/lang/String;

    move-result-object v1

    .line 132
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 134
    goto/16 :goto_0

    .line 138
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getCaCertValue()Ljava/lang/String;

    move-result-object v1

    .line 140
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 142
    goto/16 :goto_0

    .line 146
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getClientCertValue()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 150
    goto/16 :goto_0

    .line 154
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getPrivateKeyValue()Ljava/lang/String;

    move-result-object v1

    .line 156
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 158
    goto/16 :goto_0

    .line 162
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getIdentityValue()Ljava/lang/String;

    move-result-object v1

    .line 164
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 166
    goto/16 :goto_0

    .line 170
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getAnonymousIdValue()Ljava/lang/String;

    move-result-object v1

    .line 172
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 174
    goto/16 :goto_0

    .line 178
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getPasswordValue()Ljava/lang/String;

    move-result-object v1

    .line 180
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 182
    goto/16 :goto_0

    .line 186
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 190
    goto/16 :goto_0

    .line 194
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 196
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 198
    goto/16 :goto_0

    .line 202
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getHiddenSSID()Z

    move-result v1

    .line 204
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 206
    goto/16 :goto_0

    .line 205
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 210
    .end local v1           #_result:Z
    :sswitch_14
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 214
    goto/16 :goto_0

    .line 218
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getIpAddress()I

    move-result v1

    .line 220
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 222
    goto/16 :goto_0

    .line 226
    .end local v1           #_result:I
    :sswitch_16
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getLinkSpeed()I

    move-result v1

    .line 228
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 230
    goto/16 :goto_0

    .line 234
    .end local v1           #_result:I
    :sswitch_17
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getNetworkId()I

    move-result v1

    .line 236
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 238
    goto/16 :goto_0

    .line 242
    .end local v1           #_result:I
    :sswitch_18
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getRssi()I

    move-result v1

    .line 244
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 246
    goto/16 :goto_0

    .line 250
    .end local v1           #_result:I
    :sswitch_19
    const-string v2, "android.app.enterprise.IWiFiInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Landroid/app/enterprise/IWiFiInfoPolicy$Stub;->getWifiState()I

    move-result v1

    .line 252
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 254
    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
