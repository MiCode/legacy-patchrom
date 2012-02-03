.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final TRANSACTION_clearDefaults:I = 0x8

.field static final TRANSACTION_getCurrentAccessory:I = 0x1

.field static final TRANSACTION_grantAccessoryPermission:I = 0x6

.field static final TRANSACTION_hasAccessoryPermission:I = 0x4

.field static final TRANSACTION_hasDefaults:I = 0x7

.field static final TRANSACTION_openAccessory:I = 0x2

.field static final TRANSACTION_requestAccessoryPermission:I = 0x5

.field static final TRANSACTION_setAccessoryPackage:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
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
    const-string v1, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/usb/IUsbManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v6, "android.hardware.usb.IUsbManager"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v3

    .line 50
    .local v3, _result:Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v3, p3, v5}, Landroid/hardware/usb/UsbAccessory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v4, v5

    .line 58
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 62
    .end local v3           #_result:Landroid/hardware/usb/UsbAccessory;
    :sswitch_2
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 70
    .local v0, _arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 71
    .local v3, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v3, :cond_2

    .line 73
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v3, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v4, v5

    .line 79
    goto :goto_0

    .line 68
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_2

    .line 77
    .restart local v3       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 83
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 92
    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 95
    goto :goto_0

    .line 89
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_4

    .line 99
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    :sswitch_4
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 107
    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    .line 108
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 110
    goto/16 :goto_0

    .line 105
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #_result:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_5

    .restart local v3       #_result:Z
    :cond_5
    move v4, v7

    .line 109
    goto :goto_6

    .line 114
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v3           #_result:Z
    :sswitch_5
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 117
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 123
    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 126
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 131
    .local v2, _arg2:Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 133
    goto/16 :goto_0

    .line 120
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/app/PendingIntent;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_7

    .line 129
    .restart local v1       #_arg1:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/app/PendingIntent;
    goto :goto_8

    .line 137
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/app/PendingIntent;
    :sswitch_6
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 140
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 146
    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 149
    goto/16 :goto_0

    .line 143
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #_arg1:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/hardware/usb/UsbAccessory;
    goto :goto_9

    .line 153
    .end local v0           #_arg0:Landroid/hardware/usb/UsbAccessory;
    :sswitch_7
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;)Z

    move-result v3

    .line 157
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v3, :cond_9

    move v4, v5

    :goto_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 159
    goto/16 :goto_0

    :cond_9
    move v4, v7

    .line 158
    goto :goto_a

    .line 163
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_8
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 168
    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
