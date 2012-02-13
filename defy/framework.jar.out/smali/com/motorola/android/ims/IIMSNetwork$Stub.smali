.class public abstract Lcom/motorola/android/ims/IIMSNetwork$Stub;
.super Landroid/os/Binder;
.source "IIMSNetwork.java"

# interfaces
.implements Lcom/motorola/android/ims/IIMSNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/IIMSNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/IIMSNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.ims.IIMSNetwork"

.field static final TRANSACTION_getImsRegId:I = 0x2

.field static final TRANSACTION_isImsRegistered:I = 0x3

.field static final TRANSACTION_isLimitedAccessMode:I = 0x4

.field static final TRANSACTION_setListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSNetwork;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.motorola.android.ims.IIMSNetwork"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/ims/IIMSNetwork;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/android/ims/IIMSNetwork;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/android/ims/IIMSNetwork$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/ims/IIMSNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "com.motorola.android.ims.IIMSNetwork"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/android/ims/IConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IConnectionStateListener;

    move-result-object v0

    .local v0, _arg0:Lcom/motorola/android/ims/IConnectionStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v5

    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->setListener(Lcom/motorola/android/ims/IConnectionStateListener;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto :goto_0

    .end local v1           #_arg1:Z
    :cond_0
    move v1, v7

    goto :goto_1

    .end local v0           #_arg0:Lcom/motorola/android/ims/IConnectionStateListener;
    :sswitch_2
    const-string v4, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->getImsRegId()J

    move-result-wide v2

    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto :goto_0

    .end local v2           #_result:J
    :sswitch_3
    const-string v4, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->isImsRegistered()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v7

    goto :goto_2

    .end local v2           #_result:Z
    :sswitch_4
    const-string v4, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->isLimitedAccessMode()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v7

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
