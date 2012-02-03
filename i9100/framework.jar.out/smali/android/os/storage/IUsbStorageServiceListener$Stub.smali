.class public abstract Landroid/os/storage/IUsbStorageServiceListener$Stub;
.super Landroid/os/Binder;
.source "IUsbStorageServiceListener.java"

# interfaces
.implements Landroid/os/storage/IUsbStorageServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IUsbStorageServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IUsbStorageServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IUsbStorageServiceListener"

.field static final TRANSACTION_onUsbStorageStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "IUsbStorageServiceListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IUsbStorageServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageServiceListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 51
    :goto_0
    return-object v1

    .line 47
    :cond_0
    const-string v1, "IUsbStorageServiceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IUsbStorageServiceListener;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Landroid/os/storage/IUsbStorageServiceListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 51
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IUsbStorageServiceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IUsbStorageServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 55
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

    const-string v5, "IUsbStorageServiceListener"

    .line 61
    sparse-switch p1, :sswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 63
    :sswitch_0
    const-string v3, "IUsbStorageServiceListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 64
    goto :goto_0

    .line 68
    :sswitch_1
    const-string v3, "IUsbStorageServiceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, oldState:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, newState:Ljava/lang/String;
    invoke-virtual {p0, v2, v1, v0}, Landroid/os/storage/IUsbStorageServiceListener$Stub;->onUsbStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 77
    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
