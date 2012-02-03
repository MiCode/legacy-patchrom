.class public abstract Lcom/android/phone/INetworkQueryService$Stub;
.super Landroid/os/Binder;
.source "INetworkQueryService.java"

# interfaces
.implements Lcom/android/phone/INetworkQueryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/INetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.phone.INetworkQueryService"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/INetworkQueryService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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

    const-string v3, "com.android.phone.INetworkQueryService"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 48
    :sswitch_0
    const-string v1, "com.android.phone.INetworkQueryService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v1, "com.android.phone.INetworkQueryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v0

    .line 56
    .local v0, _arg0:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/phone/INetworkQueryService$Stub;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    move v1, v2

    .line 57
    goto :goto_0

    .line 61
    .end local v0           #_arg0:Lcom/android/phone/INetworkQueryServiceCallback;
    :sswitch_2
    const-string v1, "com.android.phone.INetworkQueryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v0

    .line 64
    .restart local v0       #_arg0:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-virtual {p0, v0}, Lcom/android/phone/INetworkQueryService$Stub;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    move v1, v2

    .line 65
    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
