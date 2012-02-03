.class Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothSAPService.java"

# interfaces
.implements Lcom/broadcom/bt/service/sap/IBluetoothSAPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;
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
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 98
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public disable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 156
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.sap.IBluetoothSAPService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    return-void

    .line 161
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public disconnect(B)V
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 170
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.sap.IBluetoothSAPService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget-object v2, p0, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    return-void

    .line 176
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public enable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 142
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.sap.IBluetoothSAPService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-void

    .line 147
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "com.broadcom.bt.service.sap.IBluetoothSAPService"

    return-object v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 5
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 112
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.sap.IBluetoothSAPService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 114
    iget-object v2, p0, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    return-void

    .line 113
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 5
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 125
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.sap.IBluetoothSAPService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 129
    iget-object v2, p0, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    return-void

    .line 128
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
