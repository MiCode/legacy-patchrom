.class public abstract Lcom/android/internal/telephony/ISecSIPTelephony$Stub;
.super Landroid/os/Binder;
.source "ISecSIPTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ISecSIPTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISecSIPTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISecSIPTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISecSIPTelephony"

.field static final TRANSACTION_addSecSIP:I = 0x3

.field static final TRANSACTION_removeSecSIP:I = 0x4

.field static final TRANSACTION_setTestSecSipStateAndNotify:I = 0x5

.field static final TRANSACTION_testGetVoIPAPI:I = 0x2

.field static final TRANSACTION_testSetVoIPAPI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.ISecSIPTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISecSIPTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISecSIPTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.android.internal.telephony.ISecSIPTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISecSIPTelephony;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ISecSIPTelephony;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISecSIPTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISecSIPTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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
    const/4 v4, 0x1

    const-string v5, "com.android.internal.telephony.ISecSIPTelephony"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.android.internal.telephony.ISecSIPTelephony"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.android.internal.telephony.ISecSIPTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ISecSIPTelephony$Stub;->testSetVoIPAPI(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 52
    goto :goto_0

    .line 56
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v3, "com.android.internal.telephony.ISecSIPTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISecSIPTelephony$Stub;->testGetVoIPAPI()I

    move-result v2

    .line 58
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 60
    goto :goto_0

    .line 64
    .end local v2           #_result:I
    :sswitch_3
    const-string v3, "com.android.internal.telephony.ISecSIPTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ISecSIPTelephony$Stub;->addSecSIP(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 69
    goto :goto_0

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.android.internal.telephony.ISecSIPTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ISecSIPTelephony$Stub;->removeSecSIP(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 78
    goto :goto_0

    .line 82
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.android.internal.telephony.ISecSIPTelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ISecSIPTelephony$Stub;->setTestSecSipStateAndNotify(II)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 89
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
