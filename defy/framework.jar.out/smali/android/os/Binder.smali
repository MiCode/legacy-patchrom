.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field private static final TAG:Ljava/lang/String; = "Binder"


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mObject:I

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/Binder;->init()V

    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method private final native destroy()V
.end method

.method private execTransact(IIII)Z
    .locals 4
    .parameter "code"
    .parameter "dataObj"
    .parameter "replyObj"
    .parameter "flags"

    .prologue
    invoke-static {p2}, Landroid/os/Parcel;->obtain(I)Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {p3}, Landroid/os/Parcel;->obtain(I)Landroid/os/Parcel;

    move-result-object v2

    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p0, p1, v0, v2, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .local v3, res:Z
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    .end local v3           #res:Z
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    const/4 v3, 0x1

    .restart local v3       #res:Z
    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #res:Z
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    const/4 v3, 0x1

    .restart local v3       #res:Z
    goto :goto_0
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method public static final native getThreadStrictModePolicy()I
.end method

.method private final native init()V
.end method

.method public static final native joinThreadPool()V
.end method

.method public static final native restoreCallingIdentity(J)V
.end method

.method public static final native setThreadStrictModePolicy(I)V
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0
    .parameter "owner"
    .parameter "descriptor"

    .prologue
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "args"

    .prologue
    const/4 v0, 0x0

    .local v0, fout:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, pw:Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #fout:Ljava/io/FileOutputStream;
    .local v1, fout:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2           #pw:Ljava/io/PrintWriter;
    .local v3, pw:Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {p0, p1, v3, p2}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    return-void

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .end local v3           #pw:Ljava/io/PrintWriter;
    .restart local v0       #fout:Ljava/io/FileOutputStream;
    .restart local v2       #pw:Ljava/io/PrintWriter;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    throw v4

    .end local v0           #fout:Ljava/io/FileOutputStream;
    .end local v2           #pw:Ljava/io/PrintWriter;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    .restart local v3       #pw:Ljava/io/PrintWriter;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .end local v3           #pw:Ljava/io/PrintWriter;
    .restart local v0       #fout:Ljava/io/FileOutputStream;
    .restart local v2       #pw:Ljava/io/PrintWriter;
    :catch_1
    move-exception v5

    goto :goto_2

    .end local v0           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v0       #fout:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #fout:Ljava/io/FileOutputStream;
    .end local v2           #pw:Ljava/io/PrintWriter;
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    .restart local v3       #pw:Ljava/io/PrintWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #pw:Ljava/io/PrintWriter;
    .restart local v2       #pw:Ljava/io/PrintWriter;
    move-object v0, v1

    .end local v1           #fout:Ljava/io/FileOutputStream;
    .restart local v0       #fout:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .parameter "recipient"
    .parameter "flags"

    .prologue
    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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
    const/4 v3, 0x1

    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const v2, 0x5f444d50

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .local v0, args:[Ljava/lang/String;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    throw v2

    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    goto :goto_2

    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .parameter "descriptor"

    .prologue
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .local v0, r:Z
    if-eqz p3, :cond_1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_1
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .parameter "recipient"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    return v0
.end method
