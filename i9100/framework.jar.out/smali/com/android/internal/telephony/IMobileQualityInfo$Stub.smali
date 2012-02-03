.class public abstract Lcom/android/internal/telephony/IMobileQualityInfo$Stub;
.super Landroid/os/Binder;
.source "IMobileQualityInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IMobileQualityInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMobileQualityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMobileQualityInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IMobileQualityInfo"

.field static final TRANSACTION_getInfo:I = 0x1

.field static final TRANSACTION_startInfo:I = 0x2

.field static final TRANSACTION_stopInfo:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.IMobileQualityInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMobileQualityInfo;
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
    const-string v1, "com.android.internal.telephony.IMobileQualityInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IMobileQualityInfo;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/telephony/IMobileQualityInfo;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IMobileQualityInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    const-string v3, "com.android.internal.telephony.IMobileQualityInfo"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "com.android.internal.telephony.IMobileQualityInfo"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "com.android.internal.telephony.IMobileQualityInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub;->getInfo()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 55
    goto :goto_0

    .line 59
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.android.internal.telephony.IMobileQualityInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub;->startInfo()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 62
    goto :goto_0

    .line 66
    :sswitch_3
    const-string v1, "com.android.internal.telephony.IMobileQualityInfo"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/telephony/IMobileQualityInfo$Stub;->stopInfo()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 69
    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
