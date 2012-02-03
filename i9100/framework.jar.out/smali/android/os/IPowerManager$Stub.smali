.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireDVFSlock:I = 0x19

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_clearUserActivityTimeout:I = 0x8

.field static final TRANSACTION_crash:I = 0x10

.field static final TRANSACTION_getPlugType:I = 0x12

.field static final TRANSACTION_getSupportedWakeLockFlags:I = 0xa

.field static final TRANSACTION_goToSleep:I = 0x3

.field static final TRANSACTION_goToSleepWithReason:I = 0x4

.field static final TRANSACTION_isScreenOn:I = 0xe

.field static final TRANSACTION_preventScreenOn:I = 0xd

.field static final TRANSACTION_reboot:I = 0xf

.field static final TRANSACTION_rebootWithIntent:I = 0x17

.field static final TRANSACTION_releaseWakeLock:I = 0x5

.field static final TRANSACTION_setAttentionLight:I = 0x13

.field static final TRANSACTION_setBacklightBrightness:I = 0x11

.field static final TRANSACTION_setMaximumScreenOffTimeount:I = 0xc

.field static final TRANSACTION_setPokeLock:I = 0x9

.field static final TRANSACTION_setStayOnSetting:I = 0xb

.field static final TRANSACTION_systemFotaReboot:I = 0x14

.field static final TRANSACTION_systemPowerOff:I = 0x15

.field static final TRANSACTION_systemReboot:I = 0x16

.field static final TRANSACTION_systemReboot_Fota:I = 0x18

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x2

.field static final TRANSACTION_userActivity:I = 0x6

.field static final TRANSACTION_userActivityWithForce:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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

    const-string v9, "android.os.IPowerManager"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 54
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 57
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 62
    .local v5, _arg3:Landroid/os/WorkSource;
    :goto_1
    invoke-virtual {p0, v0, v2, v4, v5}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 64
    goto :goto_0

    .line 60
    .end local v5           #_arg3:Landroid/os/WorkSource;
    :cond_0
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/WorkSource;
    goto :goto_1

    .line 68
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Landroid/os/WorkSource;
    :sswitch_2
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 72
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    sget-object v7, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 78
    .local v2, _arg1:Landroid/os/WorkSource;
    :goto_2
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 80
    goto :goto_0

    .line 76
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/WorkSource;
    goto :goto_2

    .line 84
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :sswitch_3
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 87
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/os/IPowerManager$Stub;->goToSleep(J)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 89
    goto :goto_0

    .line 93
    .end local v0           #_arg0:J
    :sswitch_4
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 97
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->goToSleepWithReason(JI)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 100
    goto :goto_0

    .line 104
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_5
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 111
    goto/16 :goto_0

    .line 115
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_6
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 119
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v8

    .line 120
    .local v2, _arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->userActivity(JZ)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 122
    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_2
    move v2, v10

    .line 119
    goto :goto_3

    .line 126
    .end local v0           #_arg0:J
    :sswitch_7
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 130
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v2, v8

    .line 132
    .restart local v2       #_arg1:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v4, v8

    .line 133
    .local v4, _arg2:Z
    :goto_5
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/os/IPowerManager$Stub;->userActivityWithForce(JZZ)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 135
    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v4           #_arg2:Z
    :cond_3
    move v2, v10

    .line 130
    goto :goto_4

    .restart local v2       #_arg1:Z
    :cond_4
    move v4, v10

    .line 132
    goto :goto_5

    .line 139
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Z
    :sswitch_8
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 143
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .local v2, _arg1:J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->clearUserActivityTimeout(JJ)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 146
    goto/16 :goto_0

    .line 150
    .end local v0           #_arg0:J
    .end local v2           #_arg1:J
    :sswitch_9
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 156
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Landroid/os/IPowerManager$Stub;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_a
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getSupportedWakeLockFlags()I

    move-result v6

    .line 165
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 167
    goto/16 :goto_0

    .line 171
    .end local v6           #_result:I
    :sswitch_b
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 176
    goto/16 :goto_0

    .line 180
    .end local v0           #_arg0:I
    :sswitch_c
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setMaximumScreenOffTimeount(I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 185
    goto/16 :goto_0

    .line 189
    .end local v0           #_arg0:I
    :sswitch_d
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v8

    .line 192
    .local v0, _arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->preventScreenOn(Z)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 194
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_5
    move v0, v10

    .line 191
    goto :goto_6

    .line 198
    :sswitch_e
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenOn()Z

    move-result v6

    .line 200
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v6, :cond_6

    move v7, v8

    :goto_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 202
    goto/16 :goto_0

    :cond_6
    move v7, v10

    .line 201
    goto :goto_7

    .line 206
    .end local v6           #_result:Z
    :sswitch_f
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->reboot(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 211
    goto/16 :goto_0

    .line 215
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 220
    goto/16 :goto_0

    .line 224
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_11
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setBacklightBrightness(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 229
    goto/16 :goto_0

    .line 233
    .end local v0           #_arg0:I
    :sswitch_12
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getPlugType()I

    move-result v6

    .line 235
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 237
    goto/16 :goto_0

    .line 241
    .end local v6           #_result:I
    :sswitch_13
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v8

    .line 245
    .local v0, _arg0:Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 248
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_7
    move v0, v10

    .line 243
    goto :goto_8

    .line 252
    :sswitch_14
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->systemFotaReboot(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 257
    goto/16 :goto_0

    .line 261
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_15
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemPowerOff()V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 264
    goto/16 :goto_0

    .line 268
    :sswitch_16
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemReboot()V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 271
    goto/16 :goto_0

    .line 275
    :sswitch_17
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->rebootWithIntent()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 278
    goto/16 :goto_0

    .line 282
    :sswitch_18
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemReboot_Fota()V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    .line 285
    goto/16 :goto_0

    .line 289
    :sswitch_19
    const-string v7, "android.os.IPowerManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->acquireDVFSlock(II)I

    move-result v6

    .line 295
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    .line 297
    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
