.class public abstract Landroid/os/IDeviceManager3LM$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager3LM.java"

# interfaces
.implements Landroid/os/IDeviceManager3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceManager3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceManager3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceManager3LM"

.field static final TRANSACTION_checkAppInstallPolicies:I = 0x17

.field static final TRANSACTION_checkAppUninstallPolicies:I = 0x19

.field static final TRANSACTION_checkPackagePermission:I = 0xe

.field static final TRANSACTION_checkUidPermission:I = 0xd

.field static final TRANSACTION_checkVpnDns:I = 0xa

.field static final TRANSACTION_clear:I = 0x1

.field static final TRANSACTION_connectToVpn:I = 0x8

.field static final TRANSACTION_deletePackage:I = 0x1b

.field static final TRANSACTION_disablePackage:I = 0x10

.field static final TRANSACTION_disconnectFromVpn:I = 0xc

.field static final TRANSACTION_enablePackage:I = 0x11

.field static final TRANSACTION_encryptPackage:I = 0x31

.field static final TRANSACTION_getBluetoothEnabled:I = 0x6

.field static final TRANSACTION_getPackageGids:I = 0x32

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_installPackage:I = 0x1a

.field static final TRANSACTION_isDataEncrypted:I = 0x2c

.field static final TRANSACTION_isDataEncryptionRequired:I = 0x2d

.field static final TRANSACTION_isPackageDisabled:I = 0x13

.field static final TRANSACTION_isPackageEncrypted:I = 0x2f

.field static final TRANSACTION_isPackageEncryptionRequired:I = 0x30

.field static final TRANSACTION_isSdEncrypted:I = 0x29

.field static final TRANSACTION_isSdEncryptionRequired:I = 0x2a

.field static final TRANSACTION_keyStoreChangePassword:I = 0x26

.field static final TRANSACTION_keyStoreContains:I = 0x24

.field static final TRANSACTION_keyStoreDeleteKey:I = 0x1f

.field static final TRANSACTION_keyStoreGetKey:I = 0x1e

.field static final TRANSACTION_keyStoreGetLastError:I = 0x23

.field static final TRANSACTION_keyStoreLock:I = 0x21

.field static final TRANSACTION_keyStorePutKey:I = 0x1d

.field static final TRANSACTION_keyStoreReset:I = 0x25

.field static final TRANSACTION_keyStoreSetPassword:I = 0x20

.field static final TRANSACTION_keyStoreTest:I = 0x1c

.field static final TRANSACTION_keyStoreUnlock:I = 0x22

.field static final TRANSACTION_putSettingsSecureInt:I = 0x28

.field static final TRANSACTION_putSettingsSecureString:I = 0x27

.field static final TRANSACTION_restoreOriginalDns:I = 0xb

.field static final TRANSACTION_setAllowedPackages:I = 0x12

.field static final TRANSACTION_setAppInstallPermissionPolicies:I = 0x15

.field static final TRANSACTION_setAppInstallPkgNamePolicies:I = 0x14

.field static final TRANSACTION_setAppInstallPubkeyPolicies:I = 0x16

.field static final TRANSACTION_setAppUninstallPkgNamePolicies:I = 0x18

.field static final TRANSACTION_setBluetoothEnabled:I = 0x5

.field static final TRANSACTION_setBootLock:I = 0x3

.field static final TRANSACTION_setDataEncryptionRequired:I = 0x2e

.field static final TRANSACTION_setNotificationText:I = 0x7

.field static final TRANSACTION_setPackagePermission:I = 0xf

.field static final TRANSACTION_setSdEncryptionRequired:I = 0x2b

.field static final TRANSACTION_setupVpnDns:I = 0x9

.field static final TRANSACTION_unlock:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.os.IDeviceManager3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IDeviceManager3LM;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IDeviceManager3LM$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDeviceManager3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.os.IDeviceManager3LM"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    goto :goto_0

    :sswitch_1
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clear()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto :goto_0

    :sswitch_2
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getVersion()I

    move-result v5

    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto :goto_0

    .end local v5           #_result:I
    :sswitch_3
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v0, v8

    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBootLock(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v10

    goto :goto_1

    :sswitch_4
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->unlock()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto :goto_0

    :sswitch_5
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v0, v8

    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBluetoothEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v10

    goto :goto_2

    :sswitch_6
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getBluetoothEnabled()Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    move v7, v8

    :goto_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v10

    goto :goto_3

    .end local v5           #_result:Z
    :sswitch_7
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNotificationText(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDeviceManager3LM$Stub;->connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    move v7, v8

    :goto_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_3
    move v7, v10

    goto :goto_4

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_9
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setupVpnDns(Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4

    move v7, v8

    :goto_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_4
    move v7, v10

    goto :goto_5

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkVpnDns(Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_5

    move v7, v8

    :goto_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_5
    move v7, v10

    goto :goto_6

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->restoreOriginalDns(Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_6

    move v7, v8

    :goto_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_6
    move v7, v10

    goto :goto_7

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_c
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v8

    .local v0, _arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->disconnectFromVpn(Z)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_8

    move v7, v8

    :goto_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v5           #_result:Z
    :cond_7
    move v0, v10

    goto :goto_8

    .restart local v0       #_arg0:Z
    .restart local v5       #_result:Z
    :cond_8
    move v7, v10

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v5           #_result:Z
    :sswitch_d
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/IDeviceManager3LM$Stub;->checkUidPermission(Ljava/lang/String;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_9

    move v7, v8

    :goto_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_9
    move v7, v10

    goto :goto_a

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :sswitch_e
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDeviceManager3LM$Stub;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_a

    move v7, v8

    :goto_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_a
    move v7, v10

    goto :goto_b

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_f
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v3, v8

    .local v3, _arg2:Z
    :goto_c
    invoke-virtual {p0, v0, v1, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_c

    move v7, v8

    :goto_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    .end local v5           #_result:Z
    :cond_b
    move v3, v10

    goto :goto_c

    .restart local v3       #_arg2:Z
    .restart local v5       #_result:Z
    :cond_c
    move v7, v10

    goto :goto_d

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Z
    .end local v5           #_result:Z
    :sswitch_10
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->disablePackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_11
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->enablePackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_12
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .local v6, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAllowedPackages(Ljava/util/Map;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_d

    move v7, v8

    :goto_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_d
    move v7, v10

    goto :goto_e

    .end local v0           #_arg0:Ljava/util/Map;
    .end local v5           #_result:Z
    .end local v6           #cl:Ljava/lang/ClassLoader;
    :sswitch_13
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_e

    move v7, v8

    :goto_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_e
    move v7, v10

    goto :goto_f

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_14
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .restart local v6       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_f

    move v7, v8

    :goto_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_f
    move v7, v10

    goto :goto_10

    .end local v0           #_arg0:Ljava/util/Map;
    .end local v5           #_result:Z
    .end local v6           #cl:Ljava/lang/ClassLoader;
    :sswitch_15
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .restart local v6       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_10

    move v7, v8

    :goto_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_10
    move v7, v10

    goto :goto_11

    .end local v0           #_arg0:Ljava/util/Map;
    .end local v5           #_result:Z
    .end local v6           #cl:Ljava/lang/ClassLoader;
    :sswitch_16
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .restart local v6       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_11

    move v7, v8

    :goto_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_11
    move v7, v10

    goto :goto_12

    .end local v0           #_arg0:Ljava/util/Map;
    .end local v5           #_result:Z
    .end local v6           #cl:Ljava/lang/ClassLoader;
    :sswitch_17
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, _arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2, v4}, Landroid/os/IDeviceManager3LM$Stub;->checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_12

    move v7, v8

    :goto_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_12
    move v7, v10

    goto :goto_13

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #_result:Z
    :sswitch_18
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .restart local v6       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_13

    move v7, v8

    :goto_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_13
    move v7, v10

    goto :goto_14

    .end local v0           #_arg0:Ljava/util/Map;
    .end local v5           #_result:Z
    .end local v6           #cl:Ljava/lang/ClassLoader;
    :sswitch_19
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_14

    move v7, v8

    :goto_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_14
    move v7, v10

    goto :goto_15

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_1a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->installPackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    move v1, v8

    .local v1, _arg1:Z
    :goto_16
    invoke-virtual {p0, v0, v1}, Landroid/os/IDeviceManager3LM$Stub;->deletePackage(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_15
    move v1, v10

    goto :goto_16

    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1c
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreTest()I

    move-result v5

    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    .end local v5           #_result:I
    :sswitch_1d
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_16

    move v7, v8

    :goto_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_16
    move v7, v10

    goto :goto_17

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_1e
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreDeleteKey(Ljava/lang/String;)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_17

    move v7, v8

    :goto_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_17
    move v7, v10

    goto :goto_18

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_20
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreSetPassword(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_21
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreLock()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_18

    move v7, v8

    :goto_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_18
    move v7, v10

    goto :goto_19

    .end local v5           #_result:Z
    :sswitch_22
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreUnlock(Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_19

    move v7, v8

    :goto_1a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_19
    move v7, v10

    goto :goto_1a

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_23
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetLastError()I

    move-result v5

    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    .end local v5           #_result:I
    :sswitch_24
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreContains(Ljava/lang/String;)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1a

    move v7, v8

    :goto_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_1a
    move v7, v10

    goto :goto_1b

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_25
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreReset()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1b

    move v7, v8

    :goto_1c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_1b
    move v7, v10

    goto :goto_1c

    .end local v5           #_result:Z
    :sswitch_26
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1c

    move v7, v8

    :goto_1d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_1c
    move v7, v10

    goto :goto_1d

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_27
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1d

    move v7, v8

    :goto_1e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_1d
    move v7, v10

    goto :goto_1e

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_28
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureInt(Ljava/lang/String;I)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1e

    move v7, v8

    :goto_1f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_1e
    move v7, v10

    goto :goto_1f

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :sswitch_29
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncrypted()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1f

    move v7, v8

    :goto_20
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_1f
    move v7, v10

    goto :goto_20

    .end local v5           #_result:Z
    :sswitch_2a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncryptionRequired()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_20

    move v7, v8

    :goto_21
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_20
    move v7, v10

    goto :goto_21

    .end local v5           #_result:Z
    :sswitch_2b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_21

    move v0, v8

    .local v0, _arg0:Z
    :goto_22
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setSdEncryptionRequired(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_21
    move v0, v10

    goto :goto_22

    :sswitch_2c
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isDataEncrypted()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_22

    move v7, v8

    :goto_23
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_22
    move v7, v10

    goto :goto_23

    .end local v5           #_result:Z
    :sswitch_2d
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isDataEncryptionRequired()Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_23

    move v7, v8

    :goto_24
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_23
    move v7, v10

    goto :goto_24

    .end local v5           #_result:Z
    :sswitch_2e
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_24

    move v0, v8

    .restart local v0       #_arg0:Z
    :goto_25
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setDataEncryptionRequired(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_24
    move v0, v10

    goto :goto_25

    :sswitch_2f
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageEncrypted(Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_25

    move v7, v8

    :goto_26
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_25
    move v7, v10

    goto :goto_26

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_30
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageEncryptionRequired(Ljava/lang/String;)Z

    move-result v5

    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_26

    move v7, v8

    :goto_27
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v8

    goto/16 :goto_0

    :cond_26
    move v7, v10

    goto :goto_27

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_31
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_27

    move v1, v8

    .local v1, _arg1:Z
    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_28

    move v3, v8

    .restart local v3       #_arg2:Z
    :goto_29
    invoke-virtual {p0, v0, v1, v3}, Landroid/os/IDeviceManager3LM$Stub;->encryptPackage(Ljava/lang/String;ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v7, v8

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v3           #_arg2:Z
    :cond_27
    move v1, v10

    goto :goto_28

    .restart local v1       #_arg1:Z
    :cond_28
    move v3, v10

    goto :goto_29

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    :sswitch_32
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v5

    .local v5, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    move v7, v8

    goto/16 :goto_0

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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
