.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_agentConnected:I = 0x3

.field static final TRANSACTION_agentDisconnected:I = 0x4

.field static final TRANSACTION_backupNow:I = 0xa

.field static final TRANSACTION_beginRestoreSession:I = 0xe

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_getCurrentTransport:I = 0xb

.field static final TRANSACTION_isBackupEnabled:I = 0x9

.field static final TRANSACTION_listAllTransports:I = 0xc

.field static final TRANSACTION_opComplete:I = 0xf

.field static final TRANSACTION_restoreAtInstall:I = 0x5

.field static final TRANSACTION_selectBackupTransport:I = 0xd

.field static final TRANSACTION_setAutoRestore:I = 0x7

.field static final TRANSACTION_setBackupEnabled:I = 0x6

.field static final TRANSACTION_setBackupProvisioned:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 40
    :goto_0
    return-object v1

    .line 36
    :cond_0
    const-string v1, "android.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/app/backup/IBackupManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 40
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.app.backup.IBackupManager"

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 52
    :sswitch_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 53
    goto :goto_0

    .line 57
    :sswitch_1
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 62
    goto :goto_0

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 71
    goto :goto_0

    .line 75
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 80
    .local v1, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_4
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 91
    goto :goto_0

    .line 95
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 102
    goto :goto_0

    .line 106
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_6
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v4

    .line 109
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 111
    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v6

    .line 108
    goto :goto_1

    .line 115
    :sswitch_7
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v4

    .line 118
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 120
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v6

    .line 117
    goto :goto_2

    .line 124
    :sswitch_8
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v4

    .line 127
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 129
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v6

    .line 126
    goto :goto_3

    .line 133
    :sswitch_9
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v2

    .line 135
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 137
    goto/16 :goto_0

    :cond_3
    move v3, v6

    .line 136
    goto :goto_4

    .line 141
    .end local v2           #_result:Z
    :sswitch_a
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 144
    goto/16 :goto_0

    .line 148
    :sswitch_b
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 152
    goto/16 :goto_0

    .line 156
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v3, v4

    .line 160
    goto/16 :goto_0

    .line 164
    .end local v2           #_result:[Ljava/lang/String;
    :sswitch_d
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 170
    goto/16 :goto_0

    .line 174
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v2

    .line 180
    .local v2, _result:Landroid/app/backup/IRestoreSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    .line 182
    goto/16 :goto_0

    .line 181
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 186
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Landroid/app/backup/IRestoreSession;
    :sswitch_f
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/backup/IBackupManager$Stub;->opComplete(I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 191
    goto/16 :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
