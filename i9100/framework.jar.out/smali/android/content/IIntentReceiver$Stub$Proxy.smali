.class Landroid/content/IIntentReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIntentReceiver.java"

# interfaces
.implements Landroid/content/IIntentReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IIntentReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "android.content.IIntentReceiver"

    return-object v0
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 5
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.content.IIntentReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    if-eqz p4, :cond_1

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    :goto_1
    if-eqz p5, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    if-eqz p6, :cond_3

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v1, p0, Landroid/content/IIntentReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    return-void

    .line 108
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 117
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 119
    goto :goto_2

    :cond_3
    move v1, v2

    .line 120
    goto :goto_3
.end method
