.class public abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrinterTaskCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

.field static final TRANSACTION_onPrinterBppDocComplete:I = 0x4

.field static final TRANSACTION_onPrinterGetObject:I = 0x8

.field static final TRANSACTION_onPrinterJobStatus:I = 0x5

.field static final TRANSACTION_onPrinterPartialImage:I = 0x7

.field static final TRANSACTION_onPrinterProgress:I = 0x2

.field static final TRANSACTION_onPrinterTaskClosed:I = 0x3

.field static final TRANSACTION_onPrinterTaskOpen:I = 0x1

.field static final TRANSACTION_onPrinterThumbnail:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
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
    const-string v1, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v6, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 55
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterTaskOpen(JI)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 58
    goto :goto_0

    .line 62
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_2
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 66
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterProgress(JII)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 71
    goto :goto_0

    .line 75
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 79
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterTaskClosed(JI)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_4
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 90
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterBppDocComplete(JI)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 93
    goto :goto_0

    .line 97
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_5
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 101
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    sget-object v4, Lcom/broadcom/bt/service/bpp/JobStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/bpp/JobStatus;

    .line 107
    .local v2, _arg1:Lcom/broadcom/bt/service/bpp/JobStatus;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 109
    goto :goto_0

    .line 105
    .end local v2           #_arg1:Lcom/broadcom/bt/service/bpp/JobStatus;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/bpp/JobStatus;
    goto :goto_1

    .line 113
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Lcom/broadcom/bt/service/bpp/JobStatus;
    :sswitch_6
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 116
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterThumbnail(J)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 118
    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:J
    :sswitch_7
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 126
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterPartialImage(JLjava/lang/String;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 129
    goto/16 :goto_0

    .line 133
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 137
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterGetObject(JLjava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 140
    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
