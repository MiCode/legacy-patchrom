.class public abstract Lcom/android/internal/telephony/IExtendedNetworkService$Stub;
.super Landroid/os/Binder;
.source "IExtendedNetworkService.java"

# interfaces
.implements Lcom/android/internal/telephony/IExtendedNetworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IExtendedNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IExtendedNetworkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IExtendedNetworkService"

.field static final TRANSACTION_clearMmiString:I = 0x4

.field static final TRANSACTION_getMmiRunningText:I = 0x2

.field static final TRANSACTION_getUserMessage:I = 0x3

.field static final TRANSACTION_setMmiString:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtendedNetworkService;
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
    const-string v1, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/internal/telephony/IExtendedNetworkService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IExtendedNetworkService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v4, "com.android.internal.telephony.IExtendedNetworkService"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->setMmiString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 55
    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->getMmiRunningText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    .local v1, _result:Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-static {v1, p3, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_1
    move v2, v3

    .line 69
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 73
    .end local v1           #_result:Ljava/lang/CharSequence;
    :sswitch_3
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 81
    .local v0, _arg0:Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 82
    .restart local v1       #_result:Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-static {v1, p3, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_3
    move v2, v3

    .line 90
    goto :goto_0

    .line 79
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_result:Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    goto :goto_2

    .line 88
    .restart local v1       #_result:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 94
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_result:Ljava/lang/CharSequence;
    :sswitch_4
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->clearMmiString()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 97
    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
