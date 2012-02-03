.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_clearBackupData:I = 0x5

.field static final TRANSACTION_finishBackup:I = 0x6

.field static final TRANSACTION_finishRestore:I = 0xc

.field static final TRANSACTION_getAvailableRestoreSets:I = 0x7

.field static final TRANSACTION_getCurrentRestoreSet:I = 0x8

.field static final TRANSACTION_getRestoreData:I = 0xb

.field static final TRANSACTION_initializeDevice:I = 0x3

.field static final TRANSACTION_nextRestorePackage:I = 0xa

.field static final TRANSACTION_performBackup:I = 0x4

.field static final TRANSACTION_requestBackupTime:I = 0x2

.field static final TRANSACTION_startRestore:I = 0x9

.field static final TRANSACTION_transportDirName:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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

    const-string v7, "com.android.internal.backup.IBackupTransport"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 52
    goto :goto_0

    .line 56
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    move-result-wide v3

    .line 58
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 60
    goto :goto_0

    .line 64
    .end local v3           #_result:J
    :sswitch_3
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice()I

    move-result v3

    .line 66
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 68
    goto :goto_0

    .line 72
    .end local v3           #_result:I
    :sswitch_4
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 81
    .local v0, _arg0:Landroid/content/pm/PackageInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 87
    .local v2, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    .line 88
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 90
    goto :goto_0

    .line 78
    .end local v0           #_arg0:Landroid/content/pm/PackageInfo;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 85
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 94
    .end local v0           #_arg0:Landroid/content/pm/PackageInfo;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 102
    .restart local v0       #_arg0:Landroid/content/pm/PackageInfo;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v3

    .line 103
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 105
    goto/16 :goto_0

    .line 100
    .end local v0           #_arg0:Landroid/content/pm/PackageInfo;
    .end local v3           #_result:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/pm/PackageInfo;
    goto :goto_3

    .line 109
    .end local v0           #_arg0:Landroid/content/pm/PackageInfo;
    :sswitch_6
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()I

    move-result v3

    .line 111
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 113
    goto/16 :goto_0

    .line 117
    .end local v3           #_result:I
    :sswitch_7
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v3

    .line 119
    .local v3, _result:[Landroid/app/backup/RestoreSet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v5, v6

    .line 121
    goto/16 :goto_0

    .line 125
    .end local v3           #_result:[Landroid/app/backup/RestoreSet;
    :sswitch_8
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet()J

    move-result-wide v3

    .line 127
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 129
    goto/16 :goto_0

    .line 133
    .end local v3           #_result:J
    :sswitch_9
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 137
    .local v0, _arg0:J
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PackageInfo;

    .line 138
    .local v2, _arg1:[Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v3

    .line 139
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 141
    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:J
    .end local v2           #_arg1:[Landroid/content/pm/PackageInfo;
    .end local v3           #_result:I
    :sswitch_a
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 149
    goto/16 :goto_0

    .line 153
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 161
    .local v0, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    .line 162
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 164
    goto/16 :goto_0

    .line 159
    .end local v0           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_result:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 168
    .end local v0           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_c
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 171
    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
