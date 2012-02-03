.class public abstract Landroid/nfc/IP2pTarget$Stub;
.super Landroid/os/Binder;
.source "IP2pTarget.java"

# interfaces
.implements Landroid/nfc/IP2pTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/IP2pTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IP2pTarget$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.IP2pTarget"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getGeneralBytes:I = 0x1

.field static final TRANSACTION_getMode:I = 0x2

.field static final TRANSACTION_transceive:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.IP2pTarget"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/IP2pTarget$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/IP2pTarget;
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
    const-string v1, "android.nfc.IP2pTarget"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/IP2pTarget;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/IP2pTarget;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/IP2pTarget$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/IP2pTarget$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "android.nfc.IP2pTarget"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "android.nfc.IP2pTarget"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.nfc.IP2pTarget"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/IP2pTarget$Stub;->getGeneralBytes(I)[B

    move-result-object v2

    .line 54
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:I
    .end local v2           #_result:[B
    :sswitch_2
    const-string v3, "android.nfc.IP2pTarget"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/IP2pTarget$Stub;->getMode(I)I

    move-result v2

    .line 64
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 66
    goto :goto_0

    .line 70
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_3
    const-string v3, "android.nfc.IP2pTarget"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/IP2pTarget$Stub;->connect(I)I

    move-result v2

    .line 74
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 76
    goto :goto_0

    .line 80
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_4
    const-string v3, "android.nfc.IP2pTarget"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/IP2pTarget$Stub;->disconnect(I)Z

    move-result v2

    .line 84
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 86
    goto :goto_0

    .line 85
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 90
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_5
    const-string v3, "android.nfc.IP2pTarget"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 95
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/IP2pTarget$Stub;->transceive(I[B)[B

    move-result-object v2

    .line 96
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    .line 98
    goto :goto_0

    .line 41
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
