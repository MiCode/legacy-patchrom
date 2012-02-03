.class Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;
.super Ljava/lang/Object;
.source "IClipboardDataUiEvent.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;
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
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "android.sec.clipboard.IClipboardDataUiEvent"

    return-object v0
.end method

.method public removeItem(I)V
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 91
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v2, p0, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    return-void

    .line 97
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 5
    .parameter "index"
    .parameter "clPasteEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 108
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 111
    iget-object v2, p0, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    return-void

    .line 110
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
