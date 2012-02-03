.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelVibrate:I = 0x5

.field static final TRANSACTION_getMaxMagnitude:I = 0xc

.field static final TRANSACTION_resetMagnitude:I = 0xb

.field static final TRANSACTION_setMagnitude:I = 0xa

.field static final TRANSACTION_vibrate:I = 0x1

.field static final TRANSACTION_vibrateCall:I = 0x8

.field static final TRANSACTION_vibrateImmVibe:I = 0x6

.field static final TRANSACTION_vibrateImmVibePattern:I = 0x7

.field static final TRANSACTION_vibrateMagnitude:I = 0x2

.field static final TRANSACTION_vibrateNotification:I = 0x9

.field static final TRANSACTION_vibratePattern:I = 0x3

.field static final TRANSACTION_vibratePatternByMagnitude:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
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
    const-string v1, "android.os.IVibratorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IVibratorService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IVibratorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v7, 0x1

    const-string v8, "android.os.IVibratorService"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 52
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 53
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IVibratorService$Stub;->vibrate(JLandroid/os/IBinder;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 55
    goto :goto_0

    .line 59
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_2
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 63
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 65
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IVibratorService$Stub;->vibrateMagnitude(JLandroid/os/IBinder;I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 68
    goto :goto_0

    .line 72
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:I
    :sswitch_3
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 76
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 79
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IVibratorService$Stub;->vibratePattern([JILandroid/os/IBinder;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 81
    goto :goto_0

    .line 85
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_4
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 89
    .restart local v0       #_arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 93
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/os/IVibratorService$Stub;->vibratePatternByMagnitude([JILandroid/os/IBinder;I)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 96
    goto :goto_0

    .line 100
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v4           #_arg3:I
    :sswitch_5
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 103
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 105
    goto :goto_0

    .line 109
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_6
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->vibrateImmVibe(II)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 116
    goto/16 :goto_0

    .line 120
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_7
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 124
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorService$Stub;->vibrateImmVibePattern([BI)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 127
    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:I
    :sswitch_8
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->vibrateCall(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 136
    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->vibrateNotification(I)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 145
    goto/16 :goto_0

    .line 149
    .end local v0           #_arg0:I
    :sswitch_a
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IVibratorService$Stub;->setMagnitude(I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 154
    goto/16 :goto_0

    .line 158
    .end local v0           #_arg0:I
    :sswitch_b
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/os/IVibratorService$Stub;->resetMagnitude()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 161
    goto/16 :goto_0

    .line 165
    :sswitch_c
    const-string v6, "android.os.IVibratorService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/os/IVibratorService$Stub;->getMaxMagnitude()I

    move-result v5

    .line 167
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 169
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
