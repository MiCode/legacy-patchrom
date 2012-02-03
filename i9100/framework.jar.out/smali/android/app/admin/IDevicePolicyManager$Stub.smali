.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_generateRecoveryPassword:I = 0x5a

.field static final TRANSACTION_getActiveAdmins:I = 0x4d

.field static final TRANSACTION_getAllowBluetoothMode:I = 0x2a

.field static final TRANSACTION_getAllowBrowser:I = 0x24

.field static final TRANSACTION_getAllowCamera:I = 0x1a

.field static final TRANSACTION_getAllowDesktopSync:I = 0x42

.field static final TRANSACTION_getAllowHTMLEmail:I = 0x22

.field static final TRANSACTION_getAllowInternetSharing:I = 0x26

.field static final TRANSACTION_getAllowIrDA:I = 0x44

.field static final TRANSACTION_getAllowPOPIMAPEmail:I = 0x20

.field static final TRANSACTION_getAllowSMIMEEncryptionAlgorithmNegotiation:I = 0x3e

.field static final TRANSACTION_getAllowSMIMESoftCerts:I = 0x40

.field static final TRANSACTION_getAllowStorageCard:I = 0x18

.field static final TRANSACTION_getAllowTextMessaging:I = 0x1e

.field static final TRANSACTION_getAllowWifi:I = 0x1c

.field static final TRANSACTION_getAttachmentsEnabled:I = 0x14

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x7

.field static final TRANSACTION_getMaxAttachmentSize:I = 0x16

.field static final TRANSACTION_getMaxCalendarAge:I = 0x2e

.field static final TRANSACTION_getMaxEmailAge:I = 0x30

.field static final TRANSACTION_getMaxEmailBodyTruncSize:I = 0x32

.field static final TRANSACTION_getMaxHtmlEmailBodyTruncSize:I = 0x34

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x9

.field static final TRANSACTION_getMaximumTimeToLock:I = 0xc

.field static final TRANSACTION_getMinPasswordComplexChars:I = 0x2c

.field static final TRANSACTION_getPassword:I = 0x59

.field static final TRANSACTION_getPasswordExpires:I = 0x10

.field static final TRANSACTION_getPasswordHistory:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPasswordRecoverable:I = 0xe

.field static final TRANSACTION_getRemoveWarning:I = 0x4f

.field static final TRANSACTION_getRequireDeviceEncryption:I = 0x46

.field static final TRANSACTION_getRequireEncryptedSMIMEMessages:I = 0x38

.field static final TRANSACTION_getRequireEncryptionSMIMEAlgorithm:I = 0x3c

.field static final TRANSACTION_getRequireManualSyncRoaming:I = 0x28

.field static final TRANSACTION_getRequireSignedSMIMEAlgorithm:I = 0x3a

.field static final TRANSACTION_getRequireSignedSMIMEMessages:I = 0x36

.field static final TRANSACTION_getRequireStorageCardEncryption:I = 0x48

.field static final TRANSACTION_isActivePasswordExpired:I = 0x6

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x5

.field static final TRANSACTION_isAdminActive:I = 0x4c

.field static final TRANSACTION_lockNow:I = 0x49

.field static final TRANSACTION_notifyChanges:I = 0x56

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x4e

.field static final TRANSACTION_reboot:I = 0x58

.field static final TRANSACTION_recoverPassword:I = 0x51

.field static final TRANSACTION_removeActiveAdmin:I = 0x50

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x54

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x55

.field static final TRANSACTION_resetPassword:I = 0xa

.field static final TRANSACTION_setActiveAdmin:I = 0x4b

.field static final TRANSACTION_setActivePasswordState:I = 0x53

.field static final TRANSACTION_setAdminPermissions:I = 0x57

.field static final TRANSACTION_setAllowBluetoothMode:I = 0x29

.field static final TRANSACTION_setAllowBrowser:I = 0x23

.field static final TRANSACTION_setAllowCamera:I = 0x19

.field static final TRANSACTION_setAllowDesktopSync:I = 0x41

.field static final TRANSACTION_setAllowHTMLEmail:I = 0x21

.field static final TRANSACTION_setAllowInternetSharing:I = 0x25

.field static final TRANSACTION_setAllowIrDA:I = 0x43

.field static final TRANSACTION_setAllowPOPIMAPEmail:I = 0x1f

.field static final TRANSACTION_setAllowSMIMEEncryptionAlgorithmNegotiation:I = 0x3d

.field static final TRANSACTION_setAllowSMIMESoftCerts:I = 0x3f

.field static final TRANSACTION_setAllowStorageCard:I = 0x17

.field static final TRANSACTION_setAllowTextMessaging:I = 0x1d

.field static final TRANSACTION_setAllowWifi:I = 0x1b

.field static final TRANSACTION_setAttachmentsEnabled:I = 0x13

.field static final TRANSACTION_setEncryptionPolicyWithEncryptApp:I = 0x5b

.field static final TRANSACTION_setMaxAttachmentSize:I = 0x15

.field static final TRANSACTION_setMaxCalendarAge:I = 0x2d

.field static final TRANSACTION_setMaxEmailAge:I = 0x2f

.field static final TRANSACTION_setMaxEmailBodyTruncSize:I = 0x31

.field static final TRANSACTION_setMaxHtmlEmailBodyTruncSize:I = 0x33

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x8

.field static final TRANSACTION_setMaximumTimeToLock:I = 0xb

.field static final TRANSACTION_setMinPasswordComplexChars:I = 0x2b

.field static final TRANSACTION_setPasswordExpires:I = 0xf

.field static final TRANSACTION_setPasswordHistory:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPasswordRecoverable:I = 0xd

.field static final TRANSACTION_setRecoveryPasswordState:I = 0x52

.field static final TRANSACTION_setRequireDeviceEncryption:I = 0x45

.field static final TRANSACTION_setRequireEncryptedSMIMEMessages:I = 0x37

.field static final TRANSACTION_setRequireEncryptionSMIMEAlgorithm:I = 0x3b

.field static final TRANSACTION_setRequireManualSyncRoaming:I = 0x27

.field static final TRANSACTION_setRequireSignedSMIMEAlgorithm:I = 0x39

.field static final TRANSACTION_setRequireSignedSMIMEMessages:I = 0x35

.field static final TRANSACTION_setRequireStorageCardEncryption:I = 0x47

.field static final TRANSACTION_wipeData:I = 0x4a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1376
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 60
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .line 67
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 75
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v8

    .line 76
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .line 82
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 91
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 98
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 106
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v8

    .line 107
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 104
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 113
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v8

    .line 115
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v8, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 116
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 121
    .end local v8           #_result:Z
    :sswitch_6
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordExpired()Z

    move-result v8

    .line 123
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 129
    .end local v8           #_result:Z
    :sswitch_7
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v8

    .line 131
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 137
    .end local v8           #_result:I
    :sswitch_8
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 146
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 143
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .line 153
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_9
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 161
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v8

    .line 162
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 159
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_8

    .line 168
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v8

    .line 174
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 175
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 180
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v8           #_result:Z
    :sswitch_b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 183
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 189
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 190
    .local v6, _arg1:J
    invoke-virtual {p0, v1, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 186
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_arg1:J
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_a

    .line 196
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 199
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 204
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v8

    .line 205
    .local v8, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 202
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:J
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .line 211
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 214
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 220
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    move v2, v0

    .line 221
    .local v2, _arg1:Z
    :goto_d
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 217
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_c

    .line 220
    :cond_c
    const/4 v0, 0x0

    move v2, v0

    goto :goto_d

    .line 227
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 230
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 235
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v8

    .line 236
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v8, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 233
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .line 237
    .restart local v8       #_result:Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    .line 242
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 245
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 251
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 248
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_10

    .line 258
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_10
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 261
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 266
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v8

    .line 267
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 264
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_10
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 273
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_11
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 276
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 282
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 279
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .line 289
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_12
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 292
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 297
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v8

    .line 298
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 295
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_12
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    .line 304
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_13
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 307
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 313
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    move v2, v0

    .line 314
    .local v2, _arg1:Z
    :goto_15
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 310
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_13
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_14

    .line 313
    :cond_14
    const/4 v0, 0x0

    move v2, v0

    goto :goto_15

    .line 320
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 323
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 328
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_16
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    .line 329
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v8, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 326
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_15
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_16

    .line 330
    .restart local v8       #_result:Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .line 335
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_15
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 338
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 344
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 341
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_17
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    .line 351
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 354
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 359
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_19
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v8

    .line 360
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 357
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_18
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_19

    .line 366
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 369
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 375
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    move v2, v0

    .line 376
    .local v2, _arg1:Z
    :goto_1b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 372
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_19
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    .line 375
    :cond_1a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1b

    .line 382
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 385
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 390
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v8

    .line 391
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v8, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 388
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_1b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c

    .line 392
    .restart local v8       #_result:Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 397
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 400
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 406
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    move v2, v0

    .line 407
    .restart local v2       #_arg1:Z
    :goto_1f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 403
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_1d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1e

    .line 406
    :cond_1e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1f

    .line 413
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 416
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 421
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_20
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v8

    .line 422
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v8, :cond_20

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 419
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_1f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_20

    .line 423
    .restart local v8       #_result:Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_21

    .line 428
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_1b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 431
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 437
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    move v2, v0

    .line 438
    .restart local v2       #_arg1:Z
    :goto_23
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 434
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_21
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_22

    .line 437
    :cond_22
    const/4 v0, 0x0

    move v2, v0

    goto :goto_23

    .line 444
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 447
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 452
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v8

    .line 453
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v8, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 450
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_23
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_24

    .line 454
    .restart local v8       #_result:Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    .line 459
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_1d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 462
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 468
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    move v2, v0

    .line 469
    .restart local v2       #_arg1:Z
    :goto_27
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 465
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_25
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_26

    .line 468
    :cond_26
    const/4 v0, 0x0

    move v2, v0

    goto :goto_27

    .line 475
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 478
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 483
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_28
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v8

    .line 484
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v8, :cond_28

    const/4 v0, 0x1

    :goto_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 481
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_27
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_28

    .line 485
    .restart local v8       #_result:Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_29

    .line 490
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_1f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    .line 493
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 499
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    move v2, v0

    .line 500
    .restart local v2       #_arg1:Z
    :goto_2b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 496
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_29
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2a

    .line 499
    :cond_2a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2b

    .line 506
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_20
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 509
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 514
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v8

    .line 515
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    if-eqz v8, :cond_2c

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 512
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_2b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2c

    .line 516
    .restart local v8       #_result:Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2d

    .line 521
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_21
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 524
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 530
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    move v2, v0

    .line 531
    .restart local v2       #_arg1:Z
    :goto_2f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 527
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_2d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2e

    .line 530
    :cond_2e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2f

    .line 537
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_22
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 540
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 545
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_30
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v8

    .line 546
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v8, :cond_30

    const/4 v0, 0x1

    :goto_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 543
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_2f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_30

    .line 547
    .restart local v8       #_result:Z
    :cond_30
    const/4 v0, 0x0

    goto :goto_31

    .line 552
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_23
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    .line 555
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 561
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    move v2, v0

    .line 562
    .restart local v2       #_arg1:Z
    :goto_33
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 558
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_32

    .line 561
    :cond_32
    const/4 v0, 0x0

    move v2, v0

    goto :goto_33

    .line 568
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_24
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    .line 571
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 576
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_34
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v8

    .line 577
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v8, :cond_34

    const/4 v0, 0x1

    :goto_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 574
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_33
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_34

    .line 578
    .restart local v8       #_result:Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_35

    .line 583
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_25
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    .line 586
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 592
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    move v2, v0

    .line 593
    .restart local v2       #_arg1:Z
    :goto_37
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 589
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_35
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_36

    .line 592
    :cond_36
    const/4 v0, 0x0

    move v2, v0

    goto :goto_37

    .line 599
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_26
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 602
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 607
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_38
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v8

    .line 608
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    if-eqz v8, :cond_38

    const/4 v0, 0x1

    :goto_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 605
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_37
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_38

    .line 609
    .restart local v8       #_result:Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_39

    .line 614
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_27
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 617
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 623
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    move v2, v0

    .line 624
    .restart local v2       #_arg1:Z
    :goto_3b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 620
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_39
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3a

    .line 623
    :cond_3a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3b

    .line 630
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_28
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 633
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 638
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z

    move-result v8

    .line 639
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v8, :cond_3c

    const/4 v0, 0x1

    :goto_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 636
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_3b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3c

    .line 640
    .restart local v8       #_result:Z
    :cond_3c
    const/4 v0, 0x0

    goto :goto_3d

    .line 645
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_29
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 648
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 654
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 655
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 651
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_3d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3e

    .line 661
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 664
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 669
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    .line 670
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 667
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_3e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3f

    .line 676
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 679
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 685
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 686
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 682
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_3f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_40

    .line 692
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    .line 695
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 700
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_41
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v8

    .line 701
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 698
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_40
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_41

    .line 707
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    .line 710
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 716
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxCalendarAge(Landroid/content/ComponentName;I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 713
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_41
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_42

    .line 723
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    .line 726
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 731
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_43
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v8

    .line 732
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 729
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_42
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_43

    .line 738
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    .line 741
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 747
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 748
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxEmailAge(Landroid/content/ComponentName;I)V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 744
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_43
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_44

    .line 754
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_30
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    .line 757
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 762
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_45
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v8

    .line 763
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 760
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_44
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_45

    .line 769
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_31
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    .line 772
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 778
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 779
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 775
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_45
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_46

    .line 785
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_32
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    .line 788
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 793
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_47
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v8

    .line 794
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 791
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_46
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_47

    .line 800
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    .line 803
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 809
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 810
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 806
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :cond_47
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_48

    .line 816
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_34
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    .line 819
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 824
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_49
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v8

    .line 825
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 822
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:I
    :cond_48
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_49

    .line 831
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_35
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    .line 834
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 840
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    move v2, v0

    .line 841
    .local v2, _arg1:Z
    :goto_4b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 837
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_49
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4a

    .line 840
    :cond_4a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4b

    .line 847
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_36
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 850
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 855
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z

    move-result v8

    .line 856
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    if-eqz v8, :cond_4c

    const/4 v0, 0x1

    :goto_4d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 853
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_4b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4c

    .line 857
    .restart local v8       #_result:Z
    :cond_4c
    const/4 v0, 0x0

    goto :goto_4d

    .line 862
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_37
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    .line 865
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 871
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    move v2, v0

    .line 872
    .restart local v2       #_arg1:Z
    :goto_4f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 868
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_4d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4e

    .line 871
    :cond_4e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4f

    .line 878
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_38
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4f

    .line 881
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 886
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_50
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z

    move-result v8

    .line 887
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    if-eqz v8, :cond_50

    const/4 v0, 0x1

    :goto_51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 884
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_4f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_50

    .line 888
    .restart local v8       #_result:Z
    :cond_50
    const/4 v0, 0x0

    goto :goto_51

    .line 893
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_39
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    .line 896
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 902
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    move v2, v0

    .line 903
    .restart local v2       #_arg1:Z
    :goto_53
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 899
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_51
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_52

    .line 902
    :cond_52
    const/4 v0, 0x0

    move v2, v0

    goto :goto_53

    .line 909
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    .line 912
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 917
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_54
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z

    move-result v8

    .line 918
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v8, :cond_54

    const/4 v0, 0x1

    :goto_55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 915
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_53
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_54

    .line 919
    .restart local v8       #_result:Z
    :cond_54
    const/4 v0, 0x0

    goto :goto_55

    .line 924
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_3b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    .line 927
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 933
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    move v2, v0

    .line 934
    .restart local v2       #_arg1:Z
    :goto_57
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V

    .line 935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 930
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_55
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_56

    .line 933
    :cond_56
    const/4 v0, 0x0

    move v2, v0

    goto :goto_57

    .line 940
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    .line 943
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 948
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_58
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z

    move-result v8

    .line 949
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    if-eqz v8, :cond_58

    const/4 v0, 0x1

    :goto_59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 946
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_57
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_58

    .line 950
    .restart local v8       #_result:Z
    :cond_58
    const/4 v0, 0x0

    goto :goto_59

    .line 955
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_3d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    .line 958
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 964
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    move v2, v0

    .line 965
    .restart local v2       #_arg1:Z
    :goto_5b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 961
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_59
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5a

    .line 964
    :cond_5a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_5b

    .line 971
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 974
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 979
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z

    move-result v8

    .line 980
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    if-eqz v8, :cond_5c

    const/4 v0, 0x1

    :goto_5d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 977
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_5b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5c

    .line 981
    .restart local v8       #_result:Z
    :cond_5c
    const/4 v0, 0x0

    goto :goto_5d

    .line 986
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_3f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 989
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 995
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    move v2, v0

    .line 996
    .restart local v2       #_arg1:Z
    :goto_5f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 992
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_5d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_5e

    .line 995
    :cond_5e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_5f

    .line 1002
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_40
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f

    .line 1005
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1010
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_60
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1011
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    if-eqz v8, :cond_60

    const/4 v0, 0x1

    :goto_61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1008
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_5f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_60

    .line 1012
    .restart local v8       #_result:Z
    :cond_60
    const/4 v0, 0x0

    goto :goto_61

    .line 1017
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_41
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    .line 1020
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1026
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    move v2, v0

    .line 1027
    .restart local v2       #_arg1:Z
    :goto_63
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V

    .line 1028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1023
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_61
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_62

    .line 1026
    :cond_62
    const/4 v0, 0x0

    move v2, v0

    goto :goto_63

    .line 1033
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_42
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    .line 1036
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1041
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_64
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1042
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    if-eqz v8, :cond_64

    const/4 v0, 0x1

    :goto_65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1039
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_63
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_64

    .line 1043
    .restart local v8       #_result:Z
    :cond_64
    const/4 v0, 0x0

    goto :goto_65

    .line 1048
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_43
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    .line 1051
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1057
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    move v2, v0

    .line 1058
    .restart local v2       #_arg1:Z
    :goto_67
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowIrDA(Landroid/content/ComponentName;Z)V

    .line 1059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1054
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_65
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_66

    .line 1057
    :cond_66
    const/4 v0, 0x0

    move v2, v0

    goto :goto_67

    .line 1064
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_44
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    .line 1067
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1072
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_68
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1073
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    if-eqz v8, :cond_68

    const/4 v0, 0x1

    :goto_69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1070
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_67
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_68

    .line 1074
    .restart local v8       #_result:Z
    :cond_68
    const/4 v0, 0x0

    goto :goto_69

    .line 1079
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_45
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    .line 1082
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1088
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    move v2, v0

    .line 1089
    .restart local v2       #_arg1:Z
    :goto_6b
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1085
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_69
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6a

    .line 1088
    :cond_6a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_6b

    .line 1095
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_46
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 1098
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1103
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6c
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1104
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    if-eqz v8, :cond_6c

    const/4 v0, 0x1

    :goto_6d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1101
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_6b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6c

    .line 1105
    .restart local v8       #_result:Z
    :cond_6c
    const/4 v0, 0x0

    goto :goto_6d

    .line 1110
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_47
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 1113
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1119
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v0, 0x1

    move v2, v0

    .line 1120
    .restart local v2       #_arg1:Z
    :goto_6f
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1116
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_6d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6e

    .line 1119
    :cond_6e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_6f

    .line 1126
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_48
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    .line 1129
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1134
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_70
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1135
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    if-eqz v8, :cond_70

    const/4 v0, 0x1

    :goto_71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1132
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_6f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_70

    .line 1136
    .restart local v8       #_result:Z
    :cond_70
    const/4 v0, 0x0

    goto :goto_71

    .line 1141
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_49
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1148
    :sswitch_4a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1151
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 1152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1157
    .end local v1           #_arg0:I
    :sswitch_4b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_71

    .line 1160
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1165
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_72
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1163
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_71
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_72

    .line 1171
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_4c
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    .line 1174
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1179
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_73
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v8

    .line 1180
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    if-eqz v8, :cond_73

    const/4 v0, 0x1

    :goto_74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1177
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :cond_72
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_73

    .line 1181
    .restart local v8       #_result:Z
    :cond_73
    const/4 v0, 0x0

    goto :goto_74

    .line 1186
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Z
    :sswitch_4d
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v10

    .line 1188
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1190
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1194
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_4e
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v8

    .line 1198
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    if-eqz v8, :cond_74

    const/4 v0, 0x1

    :goto_75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1199
    :cond_74
    const/4 v0, 0x0

    goto :goto_75

    .line 1204
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_4f
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_75

    .line 1207
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1213
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_76

    .line 1214
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 1219
    .local v2, _arg1:Landroid/os/RemoteCallback;
    :goto_77
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1210
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/os/RemoteCallback;
    :cond_75
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_76

    .line 1217
    :cond_76
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_77

    .line 1225
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_50
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_77

    .line 1228
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1233
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_78
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1231
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_77
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_78

    .line 1239
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_51
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->recoverPassword()V

    .line 1241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1246
    :sswitch_52
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_78

    .line 1249
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1255
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79

    const/4 v0, 0x1

    move v2, v0

    .line 1256
    .local v2, _arg1:Z
    :goto_7a
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1252
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_78
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_79

    .line 1255
    :cond_79
    const/4 v0, 0x0

    move v2, v0

    goto :goto_7a

    .line 1262
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_53
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1266
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1268
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1270
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x1

    move v4, v0

    .line 1272
    .local v4, _arg3:Z
    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x1

    move v5, v0

    .local v5, _arg4:Z
    :goto_7c
    move-object v0, p0

    .line 1273
    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIZZ)V

    .line 1274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1270
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    :cond_7a
    const/4 v0, 0x0

    move v4, v0

    goto :goto_7b

    .line 1272
    .restart local v4       #_arg3:Z
    :cond_7b
    const/4 v0, 0x0

    move v5, v0

    goto :goto_7c

    .line 1279
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    :sswitch_54
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1286
    :sswitch_55
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    .line 1288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1293
    :sswitch_56
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    .line 1296
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1302
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    move v2, v0

    .line 1303
    .local v2, _arg1:Z
    :goto_7e
    invoke-virtual {p0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1299
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_7c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7d

    .line 1302
    :cond_7d
    const/4 v0, 0x0

    move v2, v0

    goto :goto_7e

    .line 1309
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_57
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7e

    .line 1312
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1317
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_7f
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 1318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1315
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_7e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7f

    .line 1323
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_58
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1326
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1332
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_59
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7f

    .line 1335
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1340
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_80
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    .line 1341
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1343
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1338
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Ljava/lang/String;
    :cond_7f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_80

    .line 1347
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_5a
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_80

    .line 1350
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1355
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_81
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    .line 1356
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1353
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v8           #_result:Ljava/lang/String;
    :cond_80
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_81

    .line 1362
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_5b
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_81

    .line 1365
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1370
    .local v1, _arg0:Landroid/content/Intent;
    :goto_82
    invoke-virtual {p0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z

    move-result v8

    .line 1371
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    if-eqz v8, :cond_82

    const/4 v0, 0x1

    :goto_83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1368
    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v8           #_result:Z
    :cond_81
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/Intent;
    goto :goto_82

    .line 1372
    .restart local v8       #_result:Z
    :cond_82
    const/4 v0, 0x0

    goto :goto_83

    .line 42
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
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
