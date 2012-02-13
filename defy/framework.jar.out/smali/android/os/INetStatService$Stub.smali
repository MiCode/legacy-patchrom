.class public abstract Landroid/os/INetStatService$Stub;
.super Landroid/os/Binder;
.source "INetStatService.java"

# interfaces
.implements Landroid/os/INetStatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetStatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetStatService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetStatService"

.field static final TRANSACTION_getMobileRxBytes:I = 0x4

.field static final TRANSACTION_getMobileRxPackets:I = 0x2

.field static final TRANSACTION_getMobileTxBytes:I = 0x3

.field static final TRANSACTION_getMobileTxPackets:I = 0x1

.field static final TRANSACTION_getSpecifiedMobileRxBytes:I = 0xc

.field static final TRANSACTION_getSpecifiedMobileRxPackets:I = 0xa

.field static final TRANSACTION_getSpecifiedMobileTxBytes:I = 0xb

.field static final TRANSACTION_getSpecifiedMobileTxPackets:I = 0x9

.field static final TRANSACTION_getTotalRxBytes:I = 0x8

.field static final TRANSACTION_getTotalRxPackets:I = 0x6

.field static final TRANSACTION_getTotalTxBytes:I = 0x7

.field static final TRANSACTION_getTotalTxPackets:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.INetStatService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetStatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.os.INetStatService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetStatService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/INetStatService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/INetStatService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetStatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    const-string v5, "android.os.INetStatService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileTxPackets()J

    move-result-wide v1

    .local v1, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto :goto_0

    .end local v1           #_result:J
    :sswitch_2
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileRxPackets()J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto :goto_0

    .end local v1           #_result:J
    :sswitch_3
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileTxBytes()J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto :goto_0

    .end local v1           #_result:J
    :sswitch_4
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileRxBytes()J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto :goto_0

    .end local v1           #_result:J
    :sswitch_5
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalTxPackets()J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto :goto_0

    .end local v1           #_result:J
    :sswitch_6
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalRxPackets()J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto :goto_0

    .end local v1           #_result:J
    :sswitch_7
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalTxBytes()J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto :goto_0

    .end local v1           #_result:J
    :sswitch_8
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalRxBytes()J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto/16 :goto_0

    .end local v1           #_result:J
    :sswitch_9
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/INetStatService$Stub;->getSpecifiedMobileTxPackets(Ljava/lang/String;)J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:J
    :sswitch_a
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/INetStatService$Stub;->getSpecifiedMobileRxPackets(Ljava/lang/String;)J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:J
    :sswitch_b
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/INetStatService$Stub;->getSpecifiedMobileTxBytes(Ljava/lang/String;)J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:J
    :sswitch_c
    const-string v3, "android.os.INetStatService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/INetStatService$Stub;->getSpecifiedMobileRxBytes(Ljava/lang/String;)J

    move-result-wide v1

    .restart local v1       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
