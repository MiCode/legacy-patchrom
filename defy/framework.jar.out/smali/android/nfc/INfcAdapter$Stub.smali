.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_createLlcpConnectionlessSocket:I = 0xf

.field static final TRANSACTION_createLlcpServiceSocket:I = 0x10

.field static final TRANSACTION_createLlcpSocket:I = 0x11

.field static final TRANSACTION_disable:I = 0x12

.field static final TRANSACTION_disableForegroundDispatch:I = 0xc

.field static final TRANSACTION_disableForegroundNdefPush:I = 0xe

.field static final TRANSACTION_enable:I = 0x13

.field static final TRANSACTION_enableForegroundDispatch:I = 0xb

.field static final TRANSACTION_enableForegroundNdefPush:I = 0xd

.field static final TRANSACTION_getLlcpConnectionlessInterface:I = 0x2

.field static final TRANSACTION_getLlcpInterface:I = 0x1

.field static final TRANSACTION_getLlcpServiceInterface:I = 0x3

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x7

.field static final TRANSACTION_getNfcTagInterface:I = 0x4

.field static final TRANSACTION_getP2pInitiatorInterface:I = 0x6

.field static final TRANSACTION_getP2pTargetInterface:I = 0x5

.field static final TRANSACTION_getProperties:I = 0x14

.field static final TRANSACTION_isEnabled:I = 0x8

.field static final TRANSACTION_localGet:I = 0x9

.field static final TRANSACTION_localSet:I = 0xa

.field static final TRANSACTION_setProperties:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/nfc/INfcAdapter;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.nfc.INfcAdapter"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpInterface()Landroid/nfc/ILlcpSocket;

    move-result-object v6

    .local v6, _result:Landroid/nfc/ILlcpSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/nfc/ILlcpSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_0

    :cond_0
    move-object v0, v9

    goto :goto_1

    .end local v6           #_result:Landroid/nfc/ILlcpSocket;
    :sswitch_2
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpConnectionlessInterface()Landroid/nfc/ILlcpConnectionlessSocket;

    move-result-object v6

    .local v6, _result:Landroid/nfc/ILlcpConnectionlessSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/nfc/ILlcpConnectionlessSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_0

    :cond_1
    move-object v0, v9

    goto :goto_2

    .end local v6           #_result:Landroid/nfc/ILlcpConnectionlessSocket;
    :sswitch_3
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpServiceInterface()Landroid/nfc/ILlcpServiceSocket;

    move-result-object v6

    .local v6, _result:Landroid/nfc/ILlcpServiceSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/nfc/ILlcpServiceSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_0

    :cond_2
    move-object v0, v9

    goto :goto_3

    .end local v6           #_result:Landroid/nfc/ILlcpServiceSocket;
    :sswitch_4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v6

    .local v6, _result:Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_0

    :cond_3
    move-object v0, v9

    goto :goto_4

    .end local v6           #_result:Landroid/nfc/INfcTag;
    :sswitch_5
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getP2pTargetInterface()Landroid/nfc/IP2pTarget;

    move-result-object v6

    .local v6, _result:Landroid/nfc/IP2pTarget;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/nfc/IP2pTarget;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto/16 :goto_0

    :cond_4
    move-object v0, v9

    goto :goto_5

    .end local v6           #_result:Landroid/nfc/IP2pTarget;
    :sswitch_6
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getP2pInitiatorInterface()Landroid/nfc/IP2pInitiator;

    move-result-object v6

    .local v6, _result:Landroid/nfc/IP2pInitiator;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/nfc/IP2pInitiator;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto/16 :goto_0

    :cond_5
    move-object v0, v9

    goto :goto_6

    .end local v6           #_result:Landroid/nfc/IP2pInitiator;
    :sswitch_7
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;

    move-result-object v6

    .local v6, _result:Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto/16 :goto_0

    :cond_6
    move-object v0, v9

    goto :goto_7

    .end local v6           #_result:Landroid/nfc/INfcAdapterExtras;
    :sswitch_8
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isEnabled()Z

    move-result v6

    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_7

    move v0, v7

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    goto/16 :goto_0

    :cond_7
    move v0, v10

    goto :goto_8

    .end local v6           #_result:Z
    :sswitch_9
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->localGet()Landroid/nfc/NdefMessage;

    move-result-object v6

    .local v6, _result:Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_8

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v7}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    move v0, v7

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v6           #_result:Landroid/nfc/NdefMessage;
    :sswitch_a
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .local v1, _arg0:Landroid/nfc/NdefMessage;
    :goto_a
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->localSet(Landroid/nfc/NdefMessage;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/nfc/NdefMessage;
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/nfc/NdefMessage;
    goto :goto_a

    .end local v1           #_arg0:Landroid/nfc/NdefMessage;
    :sswitch_b
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .local v2, _arg1:Landroid/app/PendingIntent;
    :goto_c
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .local v3, _arg2:[Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/TechListParcel;

    .local v4, _arg3:Landroid/nfc/TechListParcel;
    :goto_d
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->enableForegroundDispatch(Landroid/content/ComponentName;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    .end local v3           #_arg2:[Landroid/content/IntentFilter;
    .end local v4           #_arg3:Landroid/nfc/TechListParcel;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/app/PendingIntent;
    goto :goto_c

    .restart local v3       #_arg2:[Landroid/content/IntentFilter;
    :cond_c
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/nfc/TechListParcel;
    goto :goto_d

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    .end local v3           #_arg2:[Landroid/content/IntentFilter;
    .end local v4           #_arg3:Landroid/nfc/TechListParcel;
    :sswitch_c
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disableForegroundDispatch(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .local v2, _arg1:Landroid/nfc/NdefMessage;
    :goto_10
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->enableForegroundNdefPush(Landroid/content/ComponentName;Landroid/nfc/NdefMessage;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/nfc/NdefMessage;
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/nfc/NdefMessage;
    goto :goto_10

    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/nfc/NdefMessage;
    :sswitch_e
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disableForegroundNdefPush(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_10
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_f
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->createLlcpConnectionlessSocket(I)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_10
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcAdapter$Stub;->createLlcpServiceSocket(ILjava/lang/String;III)I

    move-result v6

    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_result:I
    :sswitch_11
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->createLlcpSocket(IIII)I

    move-result v6

    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v6           #_result:I
    :sswitch_12
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disable()Z

    move-result v6

    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_11

    move v0, v7

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    goto/16 :goto_0

    :cond_11
    move v0, v10

    goto :goto_12

    .end local v6           #_result:Z
    :sswitch_13
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v6

    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_12

    move v0, v7

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    goto/16 :goto_0

    :cond_12
    move v0, v10

    goto :goto_13

    .end local v6           #_result:Z
    :sswitch_14
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
