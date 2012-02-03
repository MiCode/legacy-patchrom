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
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
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
    .line 37
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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpInterface()Landroid/nfc/ILlcpSocket;

    move-result-object v6

    .line 52
    .local v6, _result:Landroid/nfc/ILlcpSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/nfc/ILlcpSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 54
    goto :goto_0

    :cond_0
    move-object v0, v9

    .line 53
    goto :goto_1

    .line 58
    .end local v6           #_result:Landroid/nfc/ILlcpSocket;
    :sswitch_2
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpConnectionlessInterface()Landroid/nfc/ILlcpConnectionlessSocket;

    move-result-object v6

    .line 60
    .local v6, _result:Landroid/nfc/ILlcpConnectionlessSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/nfc/ILlcpConnectionlessSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 62
    goto :goto_0

    :cond_1
    move-object v0, v9

    .line 61
    goto :goto_2

    .line 66
    .end local v6           #_result:Landroid/nfc/ILlcpConnectionlessSocket;
    :sswitch_3
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getLlcpServiceInterface()Landroid/nfc/ILlcpServiceSocket;

    move-result-object v6

    .line 68
    .local v6, _result:Landroid/nfc/ILlcpServiceSocket;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/nfc/ILlcpServiceSocket;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 70
    goto :goto_0

    :cond_2
    move-object v0, v9

    .line 69
    goto :goto_3

    .line 74
    .end local v6           #_result:Landroid/nfc/ILlcpServiceSocket;
    :sswitch_4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v6

    .line 76
    .local v6, _result:Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 78
    goto :goto_0

    :cond_3
    move-object v0, v9

    .line 77
    goto :goto_4

    .line 82
    .end local v6           #_result:Landroid/nfc/INfcTag;
    :sswitch_5
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getP2pTargetInterface()Landroid/nfc/IP2pTarget;

    move-result-object v6

    .line 84
    .local v6, _result:Landroid/nfc/IP2pTarget;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/nfc/IP2pTarget;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 86
    goto/16 :goto_0

    :cond_4
    move-object v0, v9

    .line 85
    goto :goto_5

    .line 90
    .end local v6           #_result:Landroid/nfc/IP2pTarget;
    :sswitch_6
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getP2pInitiatorInterface()Landroid/nfc/IP2pInitiator;

    move-result-object v6

    .line 92
    .local v6, _result:Landroid/nfc/IP2pInitiator;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/nfc/IP2pInitiator;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 94
    goto/16 :goto_0

    :cond_5
    move-object v0, v9

    .line 93
    goto :goto_6

    .line 98
    .end local v6           #_result:Landroid/nfc/IP2pInitiator;
    :sswitch_7
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;

    move-result-object v6

    .line 100
    .local v6, _result:Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    .line 102
    goto/16 :goto_0

    :cond_6
    move-object v0, v9

    .line 101
    goto :goto_7

    .line 106
    .end local v6           #_result:Landroid/nfc/INfcAdapterExtras;
    :sswitch_8
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isEnabled()Z

    move-result v6

    .line 108
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v6, :cond_7

    move v0, v7

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 110
    goto/16 :goto_0

    :cond_7
    move v0, v10

    .line 109
    goto :goto_8

    .line 114
    .end local v6           #_result:Z
    :sswitch_9
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->localGet()Landroid/nfc/NdefMessage;

    move-result-object v6

    .line 116
    .local v6, _result:Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v6, :cond_8

    .line 118
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v6, p3, v7}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    move v0, v7

    .line 124
    goto/16 :goto_0

    .line 122
    :cond_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 128
    .end local v6           #_result:Landroid/nfc/NdefMessage;
    :sswitch_a
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 136
    .local v1, _arg0:Landroid/nfc/NdefMessage;
    :goto_a
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->localSet(Landroid/nfc/NdefMessage;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 138
    goto/16 :goto_0

    .line 134
    .end local v1           #_arg0:Landroid/nfc/NdefMessage;
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/nfc/NdefMessage;
    goto :goto_a

    .line 142
    .end local v1           #_arg0:Landroid/nfc/NdefMessage;
    :sswitch_b
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 151
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 152
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 158
    .local v2, _arg1:Landroid/app/PendingIntent;
    :goto_c
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 160
    .local v3, _arg2:[Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 161
    sget-object v0, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/TechListParcel;

    .line 166
    .local v4, _arg3:Landroid/nfc/TechListParcel;
    :goto_d
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->enableForegroundDispatch(Landroid/content/ComponentName;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 168
    goto/16 :goto_0

    .line 148
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    .end local v3           #_arg2:[Landroid/content/IntentFilter;
    .end local v4           #_arg3:Landroid/nfc/TechListParcel;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .line 155
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/app/PendingIntent;
    goto :goto_c

    .line 164
    .restart local v3       #_arg2:[Landroid/content/IntentFilter;
    :cond_c
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/nfc/TechListParcel;
    goto :goto_d

    .line 172
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/app/PendingIntent;
    .end local v3           #_arg2:[Landroid/content/IntentFilter;
    .end local v4           #_arg3:Landroid/nfc/TechListParcel;
    :sswitch_c
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 175
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 180
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disableForegroundDispatch(Landroid/content/ComponentName;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 182
    goto/16 :goto_0

    .line 178
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .line 186
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 189
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 195
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 196
    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 201
    .local v2, _arg1:Landroid/nfc/NdefMessage;
    :goto_10
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->enableForegroundNdefPush(Landroid/content/ComponentName;Landroid/nfc/NdefMessage;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 203
    goto/16 :goto_0

    .line 192
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/nfc/NdefMessage;
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .line 199
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/nfc/NdefMessage;
    goto :goto_10

    .line 207
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/nfc/NdefMessage;
    :sswitch_e
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 210
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 215
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disableForegroundNdefPush(Landroid/content/ComponentName;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 217
    goto/16 :goto_0

    .line 213
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_10
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 221
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_f
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 224
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->createLlcpConnectionlessSocket(I)I

    move-result v6

    .line 225
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 227
    goto/16 :goto_0

    .line 231
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_10
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 241
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 242
    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcAdapter$Stub;->createLlcpServiceSocket(ILjava/lang/String;III)I

    move-result v6

    .line 243
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 245
    goto/16 :goto_0

    .line 249
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_result:I
    :sswitch_11
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 258
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->createLlcpSocket(IIII)I

    move-result v6

    .line 259
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 261
    goto/16 :goto_0

    .line 265
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v6           #_result:I
    :sswitch_12
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disable()Z

    move-result v6

    .line 267
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v6, :cond_11

    move v0, v7

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 269
    goto/16 :goto_0

    :cond_11
    move v0, v10

    .line 268
    goto :goto_12

    .line 273
    .end local v6           #_result:Z
    :sswitch_13
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v6

    .line 275
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v6, :cond_12

    move v0, v7

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 277
    goto/16 :goto_0

    :cond_12
    move v0, v10

    .line 276
    goto :goto_13

    .line 281
    .end local v6           #_result:Z
    :sswitch_14
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 287
    goto/16 :goto_0

    .line 291
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 297
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 299
    goto/16 :goto_0

    .line 41
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
