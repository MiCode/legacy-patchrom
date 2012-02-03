.class public abstract Landroid/app/IBackupAgent$Stub;
.super Landroid/os/Binder;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackupAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IBackupAgent"

.field static final TRANSACTION_doBackup:I = 0x1

.field static final TRANSACTION_doRestore:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {p0, p0, v0}, Landroid/app/IBackupAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const-string v1, "android.app.IBackupAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IBackupAgent;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/app/IBackupAgent;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IBackupAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IBackupAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x1

    const-string v7, "android.app.IBackupAgent"

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 49
    :sswitch_0
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 63
    .local v1, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 70
    .local v2, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 77
    .local v3, _arg2:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    .local v5, _arg4:Landroid/app/backup/IBackupManager;
    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    move v0, v6

    .line 81
    goto :goto_0

    .line 60
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Landroid/app/backup/IBackupManager;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 67
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 74
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    .line 85
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 94
    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 103
    .restart local v3       #_arg2:Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    .restart local v5       #_arg4:Landroid/app/backup/IBackupManager;
    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    move v0, v6

    .line 107
    goto/16 :goto_0

    .line 91
    .end local v1           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Landroid/app/backup/IBackupManager;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 100
    .restart local v2       #_arg1:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
