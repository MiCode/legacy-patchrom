.class public abstract Landroid/app/enterprise/IDeviceInfo$Stub;
.super Landroid/os/Binder;
.source "IDeviceInfo.java"

# interfaces
.implements Landroid/app/enterprise/IDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IDeviceInfo"

.field static final TRANSACTION_getAvailableCapacityExternal:I = 0x5

.field static final TRANSACTION_getAvailableCapacityInternal:I = 0x7

.field static final TRANSACTION_getDeviceMaker:I = 0x10

.field static final TRANSACTION_getDeviceName:I = 0xa

.field static final TRANSACTION_getDeviceOS:I = 0x11

.field static final TRANSACTION_getDeviceOSVersion:I = 0x12

.field static final TRANSACTION_getDevicePlatform:I = 0x13

.field static final TRANSACTION_getModelName:I = 0x8

.field static final TRANSACTION_getModelNumber:I = 0x9

.field static final TRANSACTION_getModemFirmware:I = 0xd

.field static final TRANSACTION_getOSBuild:I = 0xc

.field static final TRANSACTION_getPlatformSDK:I = 0xe

.field static final TRANSACTION_getPlatformVersion:I = 0xf

.field static final TRANSACTION_getSerialNumber:I = 0xb

.field static final TRANSACTION_getTotalCapacityExternal:I = 0x4

.field static final TRANSACTION_getTotalCapacityInternal:I = 0x6

.field static final TRANSACTION_isDeviceCompromised:I = 0x3

.field static final TRANSACTION_isDeviceLocked:I = 0x2

.field static final TRANSACTION_isDeviceSecure:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;
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
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IDeviceInfo;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IDeviceInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "android.app.enterprise.IDeviceInfo"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isDeviceSecure()Z

    move-result v0

    .line 52
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 54
    goto :goto_0

    :cond_0
    move v1, v4

    .line 53
    goto :goto_1

    .line 58
    .end local v0           #_result:Z
    :sswitch_2
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isDeviceLocked()Z

    move-result v0

    .line 60
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v0, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 62
    goto :goto_0

    :cond_1
    move v1, v4

    .line 61
    goto :goto_2

    .line 66
    .end local v0           #_result:Z
    :sswitch_3
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->isDeviceCompromised()Z

    move-result v0

    .line 68
    .restart local v0       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v0, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 70
    goto :goto_0

    :cond_2
    move v1, v4

    .line 69
    goto :goto_3

    .line 74
    .end local v0           #_result:Z
    :sswitch_4
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getTotalCapacityExternal()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 78
    goto :goto_0

    .line 82
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getAvailableCapacityExternal()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 86
    goto :goto_0

    .line 90
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getTotalCapacityInternal()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 94
    goto :goto_0

    .line 98
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getAvailableCapacityInternal()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 102
    goto/16 :goto_0

    .line 106
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModelName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 110
    goto/16 :goto_0

    .line 114
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 118
    goto/16 :goto_0

    .line 122
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 126
    goto/16 :goto_0

    .line 130
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 134
    goto/16 :goto_0

    .line 138
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getOSBuild()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 142
    goto/16 :goto_0

    .line 146
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getModemFirmware()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 150
    goto/16 :goto_0

    .line 154
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getPlatformSDK()I

    move-result v0

    .line 156
    .local v0, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 158
    goto/16 :goto_0

    .line 162
    .end local v0           #_result:I
    :sswitch_f
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 166
    goto/16 :goto_0

    .line 170
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceMaker()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 174
    goto/16 :goto_0

    .line 178
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceOS()Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 182
    goto/16 :goto_0

    .line 186
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 190
    goto/16 :goto_0

    .line 194
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v1, "android.app.enterprise.IDeviceInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;->getDevicePlatform()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 198
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
