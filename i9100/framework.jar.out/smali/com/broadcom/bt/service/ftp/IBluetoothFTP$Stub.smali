.class public abstract Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFTP.java"

# interfaces
.implements Lcom/broadcom/bt/service/ftp/IBluetoothFTP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.ftp.IBluetoothFTP"

.field static final TRANSACTION_ftpServerAccessRsp:I = 0x4

.field static final TRANSACTION_ftpServerAuthenRsp:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
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
    const-string v1, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x1

    const-string v5, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v3, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->registerCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
    :sswitch_2
    const-string v3, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->unregisterCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 65
    goto :goto_0

    .line 69
    .end local v0           #_arg0:Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
    :sswitch_3
    const-string v3, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 76
    goto :goto_0

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 84
    .local v0, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v4

    .line 86
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 89
    goto :goto_0

    .line 84
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
