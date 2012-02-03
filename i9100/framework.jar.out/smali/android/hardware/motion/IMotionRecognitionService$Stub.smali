.class public abstract Landroid/hardware/motion/IMotionRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IMotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/IMotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/IMotionRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.motion.IMotionRecognitionService"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setLogPath:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_useMotionAlways:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "android.hardware.motion.IMotionRecognitionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/motion/IMotionRecognitionService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/hardware/motion/IMotionRecognitionService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/motion/IMotionRecognitionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    const-string v4, "android.hardware.motion.IMotionRecognitionService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->registerCallback(Landroid/os/IBinder;I)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 54
    goto :goto_0

    .line 58
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    :sswitch_2
    const-string v2, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->unregisterCallback(Landroid/os/IBinder;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 63
    goto :goto_0

    .line 67
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_3
    const-string v2, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->setLogPath(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 72
    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v2, "android.hardware.motion.IMotionRecognitionService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 80
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 81
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->useMotionAlways(Landroid/os/IBinder;Z)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 83
    goto :goto_0

    .line 80
    .end local v1           #_arg1:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
