.class public abstract Landroid/nfc/INfcAdapterExtras$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterExtras.java"

# interfaces
.implements Landroid/nfc/INfcAdapterExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapterExtras$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapterExtras"

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_getCardEmulationRoute:I = 0x4

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_registerTearDownApdus:I = 0x6

.field static final TRANSACTION_setCardEmulationRoute:I = 0x5

.field static final TRANSACTION_transceive:I = 0x3

.field static final TRANSACTION_unregisterTearDownApdus:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterExtras;
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
    const-string v1, "android.nfc.INfcAdapterExtras"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapterExtras;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapterExtras;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapterExtras$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapterExtras$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.nfc.INfcAdapterExtras"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 53
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->open(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v2

    .line 54
    .local v2, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v2, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v3, v4

    .line 62
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 66
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v3, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/nfc/INfcAdapterExtras$Stub;->close()Landroid/os/Bundle;

    move-result-object v2

    .line 68
    .restart local v2       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v2, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v3, v4

    .line 76
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 80
    .end local v2           #_result:Landroid/os/Bundle;
    :sswitch_3
    const-string v3, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 83
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->transceive([B)Landroid/os/Bundle;

    move-result-object v2

    .line 84
    .restart local v2       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v2, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v3, v4

    .line 92
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 96
    .end local v0           #_arg0:[B
    .end local v2           #_result:Landroid/os/Bundle;
    :sswitch_4
    const-string v3, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/nfc/INfcAdapterExtras$Stub;->getCardEmulationRoute()I

    move-result v2

    .line 98
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 100
    goto :goto_0

    .line 104
    .end local v2           #_result:I
    :sswitch_5
    const-string v3, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->setCardEmulationRoute(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 109
    goto :goto_0

    .line 113
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v3, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    sget-object v3, Landroid/nfc/ApduList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/ApduList;

    .line 123
    .local v1, _arg1:Landroid/nfc/ApduList;
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapterExtras$Stub;->registerTearDownApdus(Ljava/lang/String;Landroid/nfc/ApduList;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 125
    goto/16 :goto_0

    .line 121
    .end local v1           #_arg1:Landroid/nfc/ApduList;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/nfc/ApduList;
    goto :goto_4

    .line 129
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/nfc/ApduList;
    :sswitch_7
    const-string v3, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->unregisterTearDownApdus(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 134
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
