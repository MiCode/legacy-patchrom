.class public abstract Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPBAPCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

.field static final TRANSACTION_onPbapAccessRequested:I = 0x4

.field static final TRANSACTION_onPbapAuth:I = 0x3

.field static final TRANSACTION_onPbapClosed:I = 0x2

.field static final TRANSACTION_onPbapConnected:I = 0x1

.field static final TRANSACTION_onPbapOperCompleted:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;
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
    const-string v1, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    const-string v6, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v4, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;->onPbapConnected()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 53
    goto :goto_0

    .line 57
    :sswitch_2
    const-string v4, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;->onPbapClosed()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 60
    goto :goto_0

    .line 64
    :sswitch_3
    const-string v4, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;->onPbapAuth()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 67
    goto :goto_0

    .line 71
    :sswitch_4
    const-string v4, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 75
    .local v0, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;->onPbapAccessRequested(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #_arg0:B
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Ljava/lang/String;
    :sswitch_5
    const-string v4, "com.broadcom.bt.service.pbap.IBluetoothPBAPCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 92
    .local v1, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 93
    .local v2, _arg2:B
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback$Stub;->onPbapOperCompleted(Ljava/lang/String;BB)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 95
    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
