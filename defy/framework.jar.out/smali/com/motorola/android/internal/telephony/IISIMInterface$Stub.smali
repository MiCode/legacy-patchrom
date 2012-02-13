.class public abstract Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;
.super Landroid/os/Binder;
.source "IISIMInterface.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/IISIMInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IISIMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/IISIMInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.internal.telephony.IISIMInterface"

.field static final TRANSACTION_ISIMAuthReq:I = 0x6

.field static final TRANSACTION_getAllISIMPublicIdentity:I = 0x2

.field static final TRANSACTION_getISIMAdminData:I = 0x5

.field static final TRANSACTION_getISIMHomeDomain:I = 0x3

.field static final TRANSACTION_getISIMPCSCF:I = 0x4

.field static final TRANSACTION_getISIMPrivateIdentity:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/telephony/IISIMInterface;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/internal/telephony/IISIMInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/android/internal/telephony/IISIMInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
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

    const-string v7, "com.motorola.android.internal.telephony.IISIMInterface"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string v5, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getISIMPrivateIdentity()Ljava/lang/String;

    move-result-object v4

    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getAllISIMPublicIdentity()[Ljava/lang/String;

    move-result-object v4

    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getISIMHomeDomain()Ljava/lang/String;

    move-result-object v4

    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    .end local v4           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getISIMPCSCF()[Ljava/lang/String;

    move-result-object v4

    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getISIMAdminData()[B

    move-result-object v4

    .local v4, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    goto :goto_0

    .end local v4           #_result:[B
    :sswitch_6
    const-string v5, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, _arg3:[B
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->ISIMAuthReq(I[BI[B)Lcom/motorola/android/telephony/ISIMAuthRes;

    move-result-object v4

    .local v4, _result:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v6}, Lcom/motorola/android/telephony/ISIMAuthRes;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v5, v6

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
