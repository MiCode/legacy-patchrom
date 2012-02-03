.class Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAtCmdFwd.java"

# interfaces
.implements Lcom/android/internal/atfwd/IAtCmdFwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/IAtCmdFwd$Stub;
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
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 76
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "com.android.internal.atfwd.IAtCmdFwd"

    return-object v0
.end method

.method public processAtCmd(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 6
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 88
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 91
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.atfwd.IAtCmdFwd"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/atfwd/AtCmd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    :goto_0
    iget-object v3, p0, Lcom/android/internal/atfwd/IAtCmdFwd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    sget-object v3, Lcom/android/internal/atfwd/AtCmdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/atfwd/AtCmdResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .local v2, _result:Lcom/android/internal/atfwd/AtCmdResponse;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    return-object v2

    .line 97
    .end local v2           #_result:Lcom/android/internal/atfwd/AtCmdResponse;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 105
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/android/internal/atfwd/AtCmdResponse;
    goto :goto_1
.end method
