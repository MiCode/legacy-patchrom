.class public abstract Landroid/app/backup/IRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreObserver"

.field static final TRANSACTION_onUpdate:I = 0x3

.field static final TRANSACTION_restoreFinished:I = 0x4

.field static final TRANSACTION_restoreSetsAvailable:I = 0x1

.field static final TRANSACTION_restoreStarting:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.app.backup.IRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "android.app.backup.IRestoreObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/app/backup/IRestoreObserver;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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

    const-string v4, "android.app.backup.IRestoreObserver"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "android.app.backup.IRestoreObserver"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.app.backup.IRestoreObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    sget-object v2, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/backup/RestoreSet;

    .line 55
    .local v0, _arg0:[Landroid/app/backup/RestoreSet;
    invoke-virtual {p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    move v2, v3

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:[Landroid/app/backup/RestoreSet;
    :sswitch_2
    const-string v2, "android.app.backup.IRestoreObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->restoreStarting(I)V

    move v2, v3

    .line 64
    goto :goto_0

    .line 68
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v2, "android.app.backup.IRestoreObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/IRestoreObserver$Stub;->onUpdate(ILjava/lang/String;)V

    move v2, v3

    .line 74
    goto :goto_0

    .line 78
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v2, "android.app.backup.IRestoreObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->restoreFinished(I)V

    move v2, v3

    .line 82
    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
