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

.field static final TRANSACTION_getTotalRxBytes:I = 0x8

.field static final TRANSACTION_getTotalRxPackets:I = 0x6

.field static final TRANSACTION_getTotalTxBytes:I = 0x7

.field static final TRANSACTION_getTotalTxPackets:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.os.INetStatService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetStatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const-string v1, "android.os.INetStatService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetStatService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/os/INetStatService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
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
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    const-string v4, "android.os.INetStatService"

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileTxPackets()J

    move-result-wide v0

    .line 56
    .local v0, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 58
    goto :goto_0

    .line 62
    .end local v0           #_result:J
    :sswitch_2
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileRxPackets()J

    move-result-wide v0

    .line 64
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 66
    goto :goto_0

    .line 70
    .end local v0           #_result:J
    :sswitch_3
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileTxBytes()J

    move-result-wide v0

    .line 72
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 74
    goto :goto_0

    .line 78
    .end local v0           #_result:J
    :sswitch_4
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileRxBytes()J

    move-result-wide v0

    .line 80
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #_result:J
    :sswitch_5
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalTxPackets()J

    move-result-wide v0

    .line 88
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 90
    goto :goto_0

    .line 94
    .end local v0           #_result:J
    :sswitch_6
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalRxPackets()J

    move-result-wide v0

    .line 96
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 98
    goto :goto_0

    .line 102
    .end local v0           #_result:J
    :sswitch_7
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalTxBytes()J

    move-result-wide v0

    .line 104
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 106
    goto :goto_0

    .line 110
    .end local v0           #_result:J
    :sswitch_8
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalRxBytes()J

    move-result-wide v0

    .line 112
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 114
    goto/16 :goto_0

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
