.class public abstract Lcom/motorola/batterymanager/IBatteryManager$Stub;
.super Landroid/os/Binder;
.source "IBatteryManager.java"

# interfaces
.implements Lcom/motorola/batterymanager/IBatteryManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/batterymanager/IBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/batterymanager/IBatteryManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.batterymanager.IBatteryManager"

.field static final TRANSACTION_changeBatteryManagerMode:I = 0x6

.field static final TRANSACTION_changeCellDataSettings:I = 0x1

.field static final TRANSACTION_changeDataSettings:I = 0x2

.field static final TRANSACTION_enableApnType:I = 0x3

.field static final TRANSACTION_getCurrentBatteryManagerMode:I = 0x4

.field static final TRANSACTION_getCurrentDataStatus:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/batterymanager/IBatteryManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.motorola.batterymanager.IBatteryManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/batterymanager/IBatteryManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/batterymanager/IBatteryManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/batterymanager/IBatteryManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/batterymanager/IBatteryManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v7, "com.motorola.batterymanager.IBatteryManager"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string v5, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .local v1, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v3, v6

    .local v3, _arg2:Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->changeCellDataSettings(IJZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto :goto_0

    .end local v3           #_arg2:Z
    :cond_0
    move v3, v8

    goto :goto_1

    .end local v0           #_arg0:I
    .end local v1           #_arg1:J
    :sswitch_2
    const-string v5, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .restart local v1       #_arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v3, v6

    .restart local v3       #_arg2:Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->changeDataSettings(IJZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto :goto_0

    .end local v3           #_arg2:Z
    :cond_1
    move v3, v8

    goto :goto_2

    .end local v0           #_arg0:I
    .end local v1           #_arg1:J
    :sswitch_3
    const-string v5, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v4

    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_4
    const-string v5, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->getCurrentBatteryManagerMode()I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    .end local v4           #_result:I
    :sswitch_5
    const-string v5, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->getCurrentDataStatus()I

    move-result v4

    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    goto :goto_0

    .end local v4           #_result:I
    :sswitch_6
    const-string v5, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->changeBatteryManagerMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    goto/16 :goto_0

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
