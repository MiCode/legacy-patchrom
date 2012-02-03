.class public abstract Landroid/nfc/ILlcpServiceSocket$Stub;
.super Landroid/os/Binder;
.source "ILlcpServiceSocket.java"

# interfaces
.implements Landroid/nfc/ILlcpServiceSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/ILlcpServiceSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/ILlcpServiceSocket$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.ILlcpServiceSocket"

.field static final TRANSACTION_accept:I = 0x1

.field static final TRANSACTION_close:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.ILlcpServiceSocket"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/ILlcpServiceSocket$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/ILlcpServiceSocket;
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
    const-string v1, "android.nfc.ILlcpServiceSocket"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/ILlcpServiceSocket;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/ILlcpServiceSocket;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/ILlcpServiceSocket$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/ILlcpServiceSocket$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    const-string v4, "android.nfc.ILlcpServiceSocket"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "android.nfc.ILlcpServiceSocket"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "android.nfc.ILlcpServiceSocket"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpServiceSocket$Stub;->accept(I)I

    move-result v1

    .line 54
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_2
    const-string v2, "android.nfc.ILlcpServiceSocket"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpServiceSocket$Stub;->close(I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 65
    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
