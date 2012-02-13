.class public abstract Lcom/motorola/android/locationproxy/ILocationProxy$Stub;
.super Landroid/os/Binder;
.source "ILocationProxy.java"

# interfaces
.implements Lcom/motorola/android/locationproxy/ILocationProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/ILocationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/ILocationProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.locationproxy.ILocationProxy"

.field static final TRANSACTION_getDefaultSuplServer:I = 0x2

.field static final TRANSACTION_getSuplServer:I = 0x1

.field static final TRANSACTION_registerMtlrListener:I = 0x6

.field static final TRANSACTION_resetSuplServer:I = 0x4

.field static final TRANSACTION_responseMtlr:I = 0x5

.field static final TRANSACTION_setSuplServer:I = 0x3

.field static final TRANSACTION_unregisterMtlrListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/locationproxy/ILocationProxy;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/locationproxy/ILocationProxy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/android/locationproxy/ILocationProxy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/android/locationproxy/ILocationProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "com.motorola.android.locationproxy.ILocationProxy"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->getSuplServer()Ljava/lang/String;

    move-result-object v2

    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->getDefaultSuplServer()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->setSuplServer(Ljava/lang/String;)Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v6

    goto :goto_1

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->resetSuplServer()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_2

    .end local v2           #_result:Z
    :sswitch_5
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v4

    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->responseMtlr(ZI)Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_2
    move v0, v6

    goto :goto_3

    .restart local v0       #_arg0:Z
    .restart local v1       #_arg1:I
    .restart local v2       #_result:Z
    :cond_3
    move v3, v6

    goto :goto_4

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/IMtlrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/locationproxy/IMtlrListener;

    move-result-object v0

    .local v0, _arg0:Lcom/motorola/android/locationproxy/IMtlrListener;
    invoke-virtual {p0, v0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->registerMtlrListener(Lcom/motorola/android/locationproxy/IMtlrListener;)Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v3, v4

    :goto_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto/16 :goto_0

    :cond_4
    move v3, v6

    goto :goto_5

    .end local v0           #_arg0:Lcom/motorola/android/locationproxy/IMtlrListener;
    .end local v2           #_result:Z
    :sswitch_7
    const-string v3, "com.motorola.android.locationproxy.ILocationProxy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->unregisterMtlrListener()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v3, v4

    :goto_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto/16 :goto_0

    :cond_5
    move v3, v6

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
