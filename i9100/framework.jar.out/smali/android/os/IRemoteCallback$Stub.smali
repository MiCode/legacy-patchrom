.class public abstract Landroid/os/IRemoteCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteCallback.java"

# interfaces
.implements Landroid/os/IRemoteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IRemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRemoteCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IRemoteCallback"

.field static final TRANSACTION_sendResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IRemoteCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/IRemoteCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "android.os.IRemoteCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IRemoteCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IRemoteCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IRemoteCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    const-string v3, "android.os.IRemoteCallback"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "android.os.IRemoteCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "android.os.IRemoteCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 56
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/IRemoteCallback$Stub;->sendResult(Landroid/os/Bundle;)V

    move v1, v2

    .line 57
    goto :goto_0

    .line 54
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_1

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
