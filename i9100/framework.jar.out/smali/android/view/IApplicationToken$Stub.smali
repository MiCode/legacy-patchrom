.class public abstract Landroid/view/IApplicationToken$Stub;
.super Landroid/os/Binder;
.source "IApplicationToken.java"

# interfaces
.implements Landroid/view/IApplicationToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IApplicationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IApplicationToken$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IApplicationToken"

.field static final TRANSACTION_getKeyDispatchingTimeout:I = 0x4

.field static final TRANSACTION_keyDispatchingTimedOut:I = 0x3

.field static final TRANSACTION_windowsGone:I = 0x2

.field static final TRANSACTION_windowsVisible:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.view.IApplicationToken"

    invoke-virtual {p0, p0, v0}, Landroid/view/IApplicationToken$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "android.view.IApplicationToken"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IApplicationToken;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/view/IApplicationToken;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IApplicationToken$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IApplicationToken$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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

    const-string v4, "android.view.IApplicationToken"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v2, "android.view.IApplicationToken"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "android.view.IApplicationToken"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/view/IApplicationToken$Stub;->windowsVisible()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 51
    goto :goto_0

    .line 55
    :sswitch_2
    const-string v2, "android.view.IApplicationToken"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/IApplicationToken$Stub;->windowsGone()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 58
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v2, "android.view.IApplicationToken"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/view/IApplicationToken$Stub;->keyDispatchingTimedOut()Z

    move-result v0

    .line 64
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 66
    goto :goto_0

    .line 65
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 70
    .end local v0           #_result:Z
    :sswitch_4
    const-string v2, "android.view.IApplicationToken"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/IApplicationToken$Stub;->getKeyDispatchingTimeout()J

    move-result-wide v0

    .line 72
    .local v0, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 74
    goto :goto_0

    .line 39
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
