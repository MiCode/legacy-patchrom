.class public abstract Landroid/nfc/ILlcpConnectionlessSocket$Stub;
.super Landroid/os/Binder;
.source "ILlcpConnectionlessSocket.java"

# interfaces
.implements Landroid/nfc/ILlcpConnectionlessSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/ILlcpConnectionlessSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/ILlcpConnectionlessSocket$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.ILlcpConnectionlessSocket"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_getSap:I = 0x2

.field static final TRANSACTION_receiveFrom:I = 0x3

.field static final TRANSACTION_sendTo:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.nfc.ILlcpConnectionlessSocket"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/ILlcpConnectionlessSocket$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/ILlcpConnectionlessSocket;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.nfc.ILlcpConnectionlessSocket"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/ILlcpConnectionlessSocket;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/nfc/ILlcpConnectionlessSocket;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/ILlcpConnectionlessSocket$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/ILlcpConnectionlessSocket$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
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

    const-string v5, "android.nfc.ILlcpConnectionlessSocket"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "android.nfc.ILlcpConnectionlessSocket"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "android.nfc.ILlcpConnectionlessSocket"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpConnectionlessSocket$Stub;->close(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto :goto_0

    .end local v0           #_arg0:I
    :sswitch_2
    const-string v3, "android.nfc.ILlcpConnectionlessSocket"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpConnectionlessSocket$Stub;->getSap(I)I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_3
    const-string v3, "android.nfc.ILlcpConnectionlessSocket"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpConnectionlessSocket$Stub;->receiveFrom(I)Landroid/nfc/LlcpPacket;

    move-result-object v2

    .local v2, _result:Landroid/nfc/LlcpPacket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v4}, Landroid/nfc/LlcpPacket;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v0           #_arg0:I
    .end local v2           #_result:Landroid/nfc/LlcpPacket;
    :sswitch_4
    const-string v3, "android.nfc.ILlcpConnectionlessSocket"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/nfc/LlcpPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/LlcpPacket;

    .local v1, _arg1:Landroid/nfc/LlcpPacket;
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/nfc/ILlcpConnectionlessSocket$Stub;->sendTo(ILandroid/nfc/LlcpPacket;)I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    .end local v1           #_arg1:Landroid/nfc/LlcpPacket;
    .end local v2           #_result:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/nfc/LlcpPacket;
    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
