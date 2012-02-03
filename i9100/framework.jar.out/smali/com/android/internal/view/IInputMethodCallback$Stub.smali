.class public abstract Lcom/android/internal/view/IInputMethodCallback$Stub;
.super Landroid/os/Binder;
.source "IInputMethodCallback.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodCallback"

.field static final TRANSACTION_finishedEvent:I = 0x1

.field static final TRANSACTION_sessionCreated:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.view.IInputMethodCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodCallback;
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
    const-string v1, "com.android.internal.view.IInputMethodCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodCallback;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/view/IInputMethodCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v4, "com.android.internal.view.IInputMethodCallback"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "com.android.internal.view.IInputMethodCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.android.internal.view.IInputMethodCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 57
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputMethodCallback$Stub;->finishedEvent(IZ)V

    move v2, v3

    .line 58
    goto :goto_0

    .line 56
    .end local v1           #_arg1:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 62
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v2, "com.android.internal.view.IInputMethodCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    .line 65
    .local v0, _arg0:Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethodCallback$Stub;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V

    move v2, v3

    .line 66
    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
