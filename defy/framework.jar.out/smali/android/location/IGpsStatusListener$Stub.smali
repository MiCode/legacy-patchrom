.class public abstract Landroid/location/IGpsStatusListener$Stub;
.super Landroid/os/Binder;
.source "IGpsStatusListener.java"

# interfaces
.implements Landroid/location/IGpsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsStatusListener"

.field static final TRANSACTION_onFirstFix:I = 0x3

.field static final TRANSACTION_onGpsStarted:I = 0x1

.field static final TRANSACTION_onGpsStopped:I = 0x2

.field static final TRANSACTION_onNmeaReceived:I = 0x5

.field static final TRANSACTION_onSvStatusChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.IGpsStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.location.IGpsStatusListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IGpsStatusListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/location/IGpsStatusListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/IGpsStatusListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGpsStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.location.IGpsStatusListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "android.location.IGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/IGpsStatusListener$Stub;->onGpsStarted()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.location.IGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/IGpsStatusListener$Stub;->onGpsStopped()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "android.location.IGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/location/IGpsStatusListener$Stub;->onFirstFix(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:I
    :sswitch_4
    const-string v0, "android.location.IGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .local v2, _arg1:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .local v3, _arg2:[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    .local v4, _arg3:[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    .local v5, _arg4:[F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg6:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg7:I
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/location/IGpsStatusListener$Stub;->onSvStatusChanged(I[I[F[F[FIII)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    .end local v3           #_arg2:[F
    .end local v4           #_arg3:[F
    .end local v5           #_arg4:[F
    .end local v6           #_arg5:I
    .end local v7           #_arg6:I
    .end local v8           #_arg7:I
    :sswitch_5
    const-string v0, "android.location.IGpsStatusListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .local v9, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v9, v10, v2}, Landroid/location/IGpsStatusListener$Stub;->onNmeaReceived(JLjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
