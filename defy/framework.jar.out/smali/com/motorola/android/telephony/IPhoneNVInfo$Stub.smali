.class public abstract Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneNVInfo.java"

# interfaces
.implements Lcom/motorola/android/telephony/IPhoneNVInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/IPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.IPhoneNVInfo"

.field static final TRANSACTION_getImsCdmaScanTimer:I = 0x19

.field static final TRANSACTION_getImsEmpaSupported:I = 0xf

.field static final TRANSACTION_getImsHomeDomain:I = 0x13

.field static final TRANSACTION_getImsMultimodeScanTimer:I = 0x17

.field static final TRANSACTION_getImsPcscfPort:I = 0x9

.field static final TRANSACTION_getImsPhoneContextURI:I = 0x7

.field static final TRANSACTION_getImsSigComp:I = 0xb

.field static final TRANSACTION_getImsSmsFormat:I = 0x11

.field static final TRANSACTION_getImsSmsOverIP:I = 0x15

.field static final TRANSACTION_getImsT1Timer:I = 0x1

.field static final TRANSACTION_getImsT2Timer:I = 0x3

.field static final TRANSACTION_getImsTestMode:I = 0xd

.field static final TRANSACTION_getImsTfTimer:I = 0x5

.field static final TRANSACTION_getModemAPN:I = 0x1d

.field static final TRANSACTION_registerObserver:I = 0x1b

.field static final TRANSACTION_setImsCdmaScanTimer:I = 0x1a

.field static final TRANSACTION_setImsEmpaSupported:I = 0x10

.field static final TRANSACTION_setImsHomeDomain:I = 0x14

.field static final TRANSACTION_setImsMultimodeScanTimer:I = 0x18

.field static final TRANSACTION_setImsPcscfPort:I = 0xa

.field static final TRANSACTION_setImsPhoneContextURI:I = 0x8

.field static final TRANSACTION_setImsSigComp:I = 0xc

.field static final TRANSACTION_setImsSmsFormat:I = 0x12

.field static final TRANSACTION_setImsSmsOverIP:I = 0x16

.field static final TRANSACTION_setImsT1Timer:I = 0x2

.field static final TRANSACTION_setImsT2Timer:I = 0x4

.field static final TRANSACTION_setImsTestMode:I = 0xe

.field static final TRANSACTION_setImsTfTimer:I = 0x6

.field static final TRANSACTION_setModemAPN:I = 0x1e

.field static final TRANSACTION_unregisterObserver:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfo;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/IPhoneNVInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/android/telephony/IPhoneNVInfo;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "com.motorola.android.telephony.IPhoneNVInfo"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsT1Timer()I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto :goto_0

    .end local v1           #_result:I
    :sswitch_2
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsT1Timer(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_3
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsT2Timer()I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto :goto_0

    .end local v1           #_result:I
    :sswitch_4
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsT2Timer(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_5
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsTfTimer()I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto :goto_0

    .end local v1           #_result:I
    :sswitch_6
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsTfTimer(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_7
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsPhoneContextURI()Ljava/lang/String;

    move-result-object v1

    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    .end local v1           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsPhoneContextURI(Ljava/lang/String;)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:I
    :sswitch_9
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsPcscfPort()I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v1           #_result:I
    :sswitch_a
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsPcscfPort(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_b
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSigComp()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    .end local v1           #_result:Z
    :sswitch_c
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsSigComp(Z)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_1
    move v0, v5

    goto :goto_2

    :sswitch_d
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsTestMode()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    :cond_2
    move v2, v5

    goto :goto_3

    .end local v1           #_result:Z
    :sswitch_e
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsTestMode(Z)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_3
    move v0, v5

    goto :goto_4

    :sswitch_f
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsEmpaSupported()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    move v2, v3

    :goto_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    :cond_4
    move v2, v5

    goto :goto_5

    .end local v1           #_result:Z
    :sswitch_10
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsEmpaSupported(Z)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_5
    move v0, v5

    goto :goto_6

    :sswitch_11
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSmsFormat()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_6

    move v2, v3

    :goto_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    :cond_6
    move v2, v5

    goto :goto_7

    .end local v1           #_result:Z
    :sswitch_12
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsSmsFormat(Z)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_7
    move v0, v5

    goto :goto_8

    :sswitch_13
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsHomeDomain()Ljava/lang/String;

    move-result-object v1

    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    .end local v1           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsHomeDomain(Ljava/lang/String;)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:I
    :sswitch_15
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSmsOverIP()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_8

    move v2, v3

    :goto_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    :cond_8
    move v2, v5

    goto :goto_9

    .end local v1           #_result:Z
    :sswitch_16
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v3

    .local v0, _arg0:Z
    :goto_a
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsSmsOverIP(Z)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :cond_9
    move v0, v5

    goto :goto_a

    :sswitch_17
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsMultimodeScanTimer()I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v1           #_result:I
    :sswitch_18
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsMultimodeScanTimer(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_19
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsCdmaScanTimer()I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v1           #_result:I
    :sswitch_1a
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsCdmaScanTimer(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_1b
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    move-result-object v0

    .local v0, _arg0:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    :sswitch_1c
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    :sswitch_1d
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getModemAPN()Ljava/lang/String;

    move-result-object v1

    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    .end local v1           #_result:Ljava/lang/String;
    :sswitch_1e
    const-string v2, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setModemAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
