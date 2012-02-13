.class public abstract Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;
.super Landroid/os/Binder;
.source "IStatusBarIconNotification.java"

# interfaces
.implements Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

.field static final TRANSACTION_onIconChanged:I = 0x1

.field static final TRANSACTION_onIconVisibilityChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    const-string v6, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v4, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;->onIconChanged(Ljava/lang/String;Ljava/lang/String;II)V

    move v4, v5

    goto :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :sswitch_2
    const-string v4, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v5

    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;->onIconVisibilityChanged(Ljava/lang/String;Z)V

    move v4, v5

    goto :goto_0

    .end local v1           #_arg1:Z
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
