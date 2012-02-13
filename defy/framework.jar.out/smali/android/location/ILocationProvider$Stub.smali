.class public abstract Landroid/location/ILocationProvider$Stub;
.super Landroid/os/Binder;
.source "ILocationProvider.java"

# interfaces
.implements Landroid/location/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationProvider"

.field static final TRANSACTION_addListener:I = 0x15

.field static final TRANSACTION_disable:I = 0xc

.field static final TRANSACTION_enable:I = 0xb

.field static final TRANSACTION_enableLocationTracking:I = 0x10

.field static final TRANSACTION_getAccuracy:I = 0xa

.field static final TRANSACTION_getInternalState:I = 0xf

.field static final TRANSACTION_getPowerRequirement:I = 0x8

.field static final TRANSACTION_getStatus:I = 0xd

.field static final TRANSACTION_getStatusUpdateTime:I = 0xe

.field static final TRANSACTION_hasMonetaryCost:I = 0x4

.field static final TRANSACTION_meetsCriteria:I = 0x9

.field static final TRANSACTION_removeListener:I = 0x16

.field static final TRANSACTION_requiresCell:I = 0x3

.field static final TRANSACTION_requiresNetwork:I = 0x1

.field static final TRANSACTION_requiresSatellite:I = 0x2

.field static final TRANSACTION_sendExtraCommand:I = 0x14

.field static final TRANSACTION_setMinTime:I = 0x11

.field static final TRANSACTION_supportsAltitude:I = 0x5

.field static final TRANSACTION_supportsBearing:I = 0x7

.field static final TRANSACTION_supportsSpeed:I = 0x6

.field static final TRANSACTION_updateLocation:I = 0x13

.field static final TRANSACTION_updateNetworkState:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.ILocationProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.location.ILocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationProvider;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/location/ILocationProvider;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/ILocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.location.ILocationProvider"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresNetwork()Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v8

    goto :goto_1

    .end local v3           #_result:Z
    :sswitch_2
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresSatellite()Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v8

    goto :goto_2

    .end local v3           #_result:Z
    :sswitch_3
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresCell()Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_3

    .end local v3           #_result:Z
    :sswitch_4
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->hasMonetaryCost()Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v8

    goto :goto_4

    .end local v3           #_result:Z
    :sswitch_5
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsAltitude()Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    move v5, v6

    :goto_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    :cond_4
    move v5, v8

    goto :goto_5

    .end local v3           #_result:Z
    :sswitch_6
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsSpeed()Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5

    move v5, v6

    :goto_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    :cond_5
    move v5, v8

    goto :goto_6

    .end local v3           #_result:Z
    :sswitch_7
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsBearing()Z

    move-result v3

    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    move v5, v6

    :goto_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    :cond_6
    move v5, v8

    goto :goto_7

    .end local v3           #_result:Z
    :sswitch_8
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getPowerRequirement()I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v3           #_result:I
    :sswitch_9
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    .local v0, _arg0:Landroid/location/Criteria;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8

    move v5, v6

    :goto_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/location/Criteria;
    .end local v3           #_result:Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/location/Criteria;
    goto :goto_8

    .restart local v3       #_result:Z
    :cond_8
    move v5, v8

    goto :goto_9

    .end local v0           #_arg0:Landroid/location/Criteria;
    .end local v3           #_result:Z
    :sswitch_a
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getAccuracy()I

    move-result v3

    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto/16 :goto_0

    .end local v3           #_result:I
    :sswitch_b
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->enable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->disable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, _arg0:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    move-result v3

    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_9

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    move v5, v6

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v3           #_result:I
    :sswitch_e
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getStatusUpdateTime()J

    move-result-wide v3

    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    goto/16 :goto_0

    .end local v3           #_result:J
    :sswitch_f
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getInternalState()Ljava/lang/String;

    move-result-object v3

    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    goto/16 :goto_0

    .end local v3           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v0, v6

    .local v0, _arg0:Z
    :goto_b
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->enableLocationTracking(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_a
    move v0, v8

    goto :goto_b

    :sswitch_11
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .local v2, _arg1:Landroid/os/WorkSource;
    :goto_c
    invoke-virtual {p0, v0, v1, v2}, Landroid/location/ILocationProvider$Stub;->setMinTime(JLandroid/os/WorkSource;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/os/WorkSource;
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/WorkSource;
    goto :goto_c

    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/os/WorkSource;
    :sswitch_12
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, _arg1:Landroid/net/NetworkInfo;
    :goto_d
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationProvider$Stub;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/net/NetworkInfo;
    :cond_c
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/NetworkInfo;
    goto :goto_d

    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/net/NetworkInfo;
    :sswitch_13
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .local v0, _arg0:Landroid/location/Location;
    :goto_e
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->updateLocation(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/location/Location;
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/location/Location;
    goto :goto_e

    .end local v0           #_arg0:Landroid/location/Location;
    :sswitch_14
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, _arg1:Landroid/os/Bundle;
    :goto_f
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_f

    move v5, v6

    :goto_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v2, :cond_10

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    move v5, v6

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_result:Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_f

    .restart local v3       #_result:Z
    :cond_f
    move v5, v8

    goto :goto_10

    :cond_10
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_result:Z
    :sswitch_15
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->addListener(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_16
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->removeListener(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
