.class Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;
.super Ljava/lang/Object;
.source "IClipboardDataList.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/IClipboardDataList$Stub;
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
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "android.sec.clipboard.data.IClipboardDataList"

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 144
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v3, p0, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    sget-object v3, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .local v2, _result:Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    return-object v2

    .line 152
    .end local v2           #_result:Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 156
    .end local v2           #_result:Landroid/sec/clipboard/data/ClipboardData;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public size()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 133
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    return v2

    .line 133
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
