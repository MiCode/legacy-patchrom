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
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-direct {p0}, Landroid/os/Binder;->init()V

    .line 158
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
    .line 313
    invoke-static {p2}, Landroid/os/Parcel;->obtain(I)Landroid/os/Parcel;

    move-result-object v0

    .line 314
    .local v0, data:Landroid/os/Parcel;
    invoke-static {p3}, Landroid/os/Parcel;->obtain(I)Landroid/os/Parcel;

    move-result-object v2

    .line 320
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p0, p1, v0, v2, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 328
    .local v3, res:Z
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    return v3

    .line 321
    .end local v3           #res:Z
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 323
    const/4 v3, 0x1

    .line 327
    .restart local v3       #res:Z
    goto :goto_0

    .line 324
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #res:Z
    :catch_1
    move-exception v1

    .line 325
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 326
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
    .line 167
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 168
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 169
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 267
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 249
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 250
    .local v0, fout:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 252
    .local v1, pw:Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 301
    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .parameter "recipient"
    .parameter "flags"

    .prologue
    .line 290
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

    .line 216
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 241
    :goto_0
    return v2

    .line 219
    :cond_0
    const v2, 0x5f444d50

    if-ne p1, v2, :cond_3

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 221
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, args:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 224
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    move v2, v3

    .line 239
    goto :goto_0

    .line 226
    :catchall_0
    move-exception v2

    .line 227
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    :goto_3
    throw v2

    .line 237
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    goto :goto_2

    .line 241
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 228
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
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 205
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

    .line 276
    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 279
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 280
    .local v0, r:Z
    if-eqz p3, :cond_1

    .line 281
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 283
    :cond_1
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .parameter "recipient"
    .parameter "flags"

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method
