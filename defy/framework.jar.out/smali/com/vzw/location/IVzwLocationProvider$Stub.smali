.class public abstract Lcom/vzw/location/IVzwLocationProvider$Stub;
.super Landroid/os/Binder;
.source "IVzwLocationProvider.java"

# interfaces
.implements Lcom/vzw/location/IVzwLocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/IVzwLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.IVzwLocationProvider"

.field static final TRANSACTION_addListener:I = 0x13

.field static final TRANSACTION_disable:I = 0xb

.field static final TRANSACTION_enable:I = 0xa

.field static final TRANSACTION_enableLocationTracking:I = 0xf

.field static final TRANSACTION_getAccuracy:I = 0x9

.field static final TRANSACTION_getPowerRequirement:I = 0x8

.field static final TRANSACTION_getStatus:I = 0xd

.field static final TRANSACTION_getStatusUpdateTime:I = 0xe

.field static final TRANSACTION_hasMonetaryCost:I = 0x4

.field static final TRANSACTION_isEnabled:I = 0xc

.field static final TRANSACTION_removeListener:I = 0x14

.field static final TRANSACTION_requiresCell:I = 0x3

.field static final TRANSACTION_requiresNetwork:I = 0x1

.field static final TRANSACTION_requiresSatellite:I = 0x2

.field static final TRANSACTION_setConfig:I = 0x10

.field static final TRANSACTION_supportsAltitude:I = 0x5

.field static final TRANSACTION_supportsBearing:I = 0x7

.field static final TRANSACTION_supportsSpeed:I = 0x6

.field static final TRANSACTION_updateAuthenticationState:I = 0x12

.field static final TRANSACTION_updateNetworkState:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationProvider;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.vzw.location.IVzwLocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vzw/location/IVzwLocationProvider;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vzw/location/IVzwLocationProvider;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/vzw/location/IVzwLocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v6, "com.vzw.location.IVzwLocationProvider"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresNetwork()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    .end local v2           #_result:Z
    :sswitch_2
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresSatellite()Z

    move-result v2

    .restart local v2       #_result:Z
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
    :sswitch_3
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->requiresCell()Z

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

    .end local v2           #_result:Z
    :sswitch_4
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->hasMonetaryCost()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v7

    goto :goto_4

    .end local v2           #_result:Z
    :sswitch_5
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsAltitude()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v4, v5

    :goto_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v7

    goto :goto_5

    .end local v2           #_result:Z
    :sswitch_6
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsSpeed()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_5
    move v4, v7

    goto :goto_6

    .end local v2           #_result:Z
    :sswitch_7
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->supportsBearing()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6

    move v4, v5

    :goto_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_6
    move v4, v7

    goto :goto_7

    .end local v2           #_result:Z
    :sswitch_8
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getPowerRequirement()I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_9
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getAccuracy()I

    move-result v2

    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_a
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->enable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->disable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->isEnabled()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7

    move v4, v5

    :goto_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    goto/16 :goto_0

    :cond_7
    move v4, v7

    goto :goto_8

    .end local v2           #_result:Z
    :sswitch_d
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, _arg0:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_8

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    move v4, v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v2           #_result:I
    :sswitch_e
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->getStatusUpdateTime()J

    move-result-wide v2

    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    goto/16 :goto_0

    .end local v2           #_result:J
    :sswitch_f
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    move v0, v5

    .local v0, _arg0:Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    move v1, v5

    .local v1, _arg1:Z
    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/IVzwLocationProvider$Stub;->enableLocationTracking(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    :cond_9
    move v0, v7

    goto :goto_a

    .restart local v0       #_arg0:Z
    :cond_a
    move v1, v7

    goto :goto_b

    .end local v0           #_arg0:Z
    :sswitch_10
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwCriteria;

    .local v0, _arg0:Lcom/vzw/location/VzwCriteria;
    :goto_c
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->setConfig(Lcom/vzw/location/VzwCriteria;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/vzw/location/VzwCriteria;
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/vzw/location/VzwCriteria;
    goto :goto_c

    .end local v0           #_arg0:Lcom/vzw/location/VzwCriteria;
    :sswitch_11
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->updateNetworkState(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_12
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/IVzwLocationProvider$Stub;->updateAuthenticationState(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_13
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->addListener(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_14
    const-string v4, "com.vzw.location.IVzwLocationProvider"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationProvider$Stub;->removeListener(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
