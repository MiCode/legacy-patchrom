.class public abstract Lcom/broadcom/bt/service/framework/IServiceManager$Stub;
.super Landroid/os/Binder;
.source "IServiceManager.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/IServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.framework.IServiceManager"

.field static final TRANSACTION_disableService:I = 0x2

.field static final TRANSACTION_enableService:I = 0x1

.field static final TRANSACTION_getServiceState:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.broadcom.bt.service.framework.IServiceManager"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "com.broadcom.bt.service.framework.IServiceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/framework/IServiceManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/broadcom/bt/service/framework/IServiceManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/framework/IServiceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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

    const-string v4, "com.broadcom.bt.service.framework.IServiceManager"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "com.broadcom.bt.service.framework.IServiceManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.broadcom.bt.service.framework.IServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->enableService(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 57
    goto :goto_0

    .line 61
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.broadcom.bt.service.framework.IServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->disableService(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 66
    goto :goto_0

    .line 70
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v2, "com.broadcom.bt.service.framework.IServiceManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->getServiceState(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 76
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
