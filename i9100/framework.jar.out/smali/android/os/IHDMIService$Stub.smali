.class public abstract Landroid/os/IHDMIService$Stub;
.super Landroid/os/Binder;
.source "IHDMIService.java"

# interfaces
.implements Landroid/os/IHDMIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHDMIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHDMIService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHDMIService"

.field static final TRANSACTION_isHDMIConnected:I = 0x1

.field static final TRANSACTION_setActionsafeHeightRatio:I = 0x4

.field static final TRANSACTION_setActionsafeWidthRatio:I = 0x3

.field static final TRANSACTION_setHDMIOutput:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IHDMIService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHDMIService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHDMIService;
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
    const-string v1, "android.os.IHDMIService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IHDMIService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/IHDMIService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IHDMIService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IHDMIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v4, "android.os.IHDMIService"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "android.os.IHDMIService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "android.os.IHDMIService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/os/IHDMIService$Stub;->isHDMIConnected()Z

    move-result v1

    .line 52
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 54
    goto :goto_0

    :cond_0
    move v2, v5

    .line 53
    goto :goto_1

    .line 58
    .end local v1           #_result:Z
    :sswitch_2
    const-string v2, "android.os.IHDMIService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 61
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/IHDMIService$Stub;->setHDMIOutput(Z)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 63
    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v5

    .line 60
    goto :goto_2

    .line 67
    :sswitch_3
    const-string v2, "android.os.IHDMIService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 70
    .local v0, _arg0:F
    invoke-virtual {p0, v0}, Landroid/os/IHDMIService$Stub;->setActionsafeWidthRatio(F)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 72
    goto :goto_0

    .line 76
    .end local v0           #_arg0:F
    :sswitch_4
    const-string v2, "android.os.IHDMIService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 79
    .restart local v0       #_arg0:F
    invoke-virtual {p0, v0}, Landroid/os/IHDMIService$Stub;->setActionsafeHeightRatio(F)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 81
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
