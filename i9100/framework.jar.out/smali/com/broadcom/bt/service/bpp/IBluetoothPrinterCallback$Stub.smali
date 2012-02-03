.class public abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrinterCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

.field static final TRANSACTION_onAuthorizePrinter:I = 0x2

.field static final TRANSACTION_onGetPrinterCapabilities:I = 0x3

.field static final TRANSACTION_onPrinterSessionOpen:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
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
    const-string v1, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v8, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->onPrinterSessionOpen()V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 54
    goto :goto_0

    .line 58
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v7

    .line 67
    .local v4, _arg3:Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->onAuthorizePrinter(IIIZ)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 69
    goto :goto_0

    .line 66
    .end local v4           #_arg3:Z
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    .line 73
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 83
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/bpp/BipCapabilities;

    .line 90
    .local v5, _arg4:Lcom/broadcom/bt/service/bpp/BipCapabilities;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/bpp/BppAttributes;

    .local v6, _arg5:Lcom/broadcom/bt/service/bpp/BppAttributes;
    :goto_3
    move-object v0, p0

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->onGetPrinterCapabilities(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 98
    goto :goto_0

    .line 87
    .end local v5           #_arg4:Lcom/broadcom/bt/service/bpp/BipCapabilities;
    .end local v6           #_arg5:Lcom/broadcom/bt/service/bpp/BppAttributes;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #_arg4:Lcom/broadcom/bt/service/bpp/BipCapabilities;
    goto :goto_2

    .line 94
    :cond_2
    const/4 v6, 0x0

    .restart local v6       #_arg5:Lcom/broadcom/bt/service/bpp/BppAttributes;
    goto :goto_3

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
