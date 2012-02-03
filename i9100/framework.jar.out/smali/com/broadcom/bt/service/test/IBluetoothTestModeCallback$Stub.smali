.class public abstract Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothTestModeCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

.field static final TRANSACTION_onBtldApiCmdInd:I = 0xa

.field static final TRANSACTION_onEnableBtSnoop:I = 0x2

.field static final TRANSACTION_onEnterDUTMode:I = 0x7

.field static final TRANSACTION_onEnterTestMode:I = 0x5

.field static final TRANSACTION_onExitDUTMode:I = 0x8

.field static final TRANSACTION_onExitTestMode:I = 0x6

.field static final TRANSACTION_onGetBtSnoopState:I = 0x3

.field static final TRANSACTION_onGetTestMode:I = 0x4

.field static final TRANSACTION_onSetTestMode:I = 0x1

.field static final TRANSACTION_onTx_Rx_Test:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
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
    const-string v1, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onSetTestMode(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 55
    goto :goto_0

    .line 59
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onEnableBtSnoop(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 64
    goto :goto_0

    .line 68
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onGetBtSnoopState(I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 73
    goto :goto_0

    .line 77
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onGetTestMode(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onEnterTestMode(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 91
    goto :goto_0

    .line 95
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onExitTestMode(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 100
    goto :goto_0

    .line 104
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onEnterDUTMode(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 109
    goto :goto_0

    .line 113
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onExitDUTMode(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 118
    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onTx_Rx_Test(II)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 129
    goto/16 :goto_0

    .line 133
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_a
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 140
    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onBtldApiCmdInd(II[B)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 142
    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
