.class public abstract Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFTPCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

.field static final TRANSACTION_onFtpServerAccessRequested:I = 0x5

.field static final TRANSACTION_onFtpServerAuthen:I = 0x4

.field static final TRANSACTION_onFtpServerClosed:I = 0x3

.field static final TRANSACTION_onFtpServerDelCompleted:I = 0x9

.field static final TRANSACTION_onFtpServerEnabled:I = 0x1

.field static final TRANSACTION_onFtpServerFileTransferInProgress:I = 0x6

.field static final TRANSACTION_onFtpServerGetCompleted:I = 0x8

.field static final TRANSACTION_onFtpServerOpened:I = 0x2

.field static final TRANSACTION_onFtpServerPutCompleted:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
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
    const-string v1, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x1

    const-string v7, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerEnabled()V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 54
    goto :goto_0

    .line 58
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerOpened(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 63
    goto :goto_0

    .line 67
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerClosed()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 70
    goto :goto_0

    .line 74
    :sswitch_4
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 80
    .local v2, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v6

    .line 81
    .local v3, _arg2:Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerAuthen(Ljava/lang/String;BZ)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 83
    goto :goto_0

    .line 80
    .end local v3           #_arg2:Z
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 87
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_5
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 97
    .local v4, _arg3:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 100
    goto :goto_0

    .line 104
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:B
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_6
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerFileTransferInProgress(II)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 111
    goto/16 :goto_0

    .line 115
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_7
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 120
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerPutCompleted(Ljava/lang/String;B)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 122
    goto/16 :goto_0

    .line 126
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_8
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 131
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerGetCompleted(Ljava/lang/String;B)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 133
    goto/16 :goto_0

    .line 137
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_9
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 142
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerDelCompleted(Ljava/lang/String;B)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 144
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
