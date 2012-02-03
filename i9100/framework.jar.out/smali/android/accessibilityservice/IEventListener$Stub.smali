.class public abstract Landroid/accessibilityservice/IEventListener$Stub;
.super Landroid/os/Binder;
.source "IEventListener.java"

# interfaces
.implements Landroid/accessibilityservice/IEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IEventListener"

.field static final TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final TRANSACTION_onInterrupt:I = 0x3

.field static final TRANSACTION_setConnection:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.accessibilityservice.IEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IEventListener;
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
    const-string v1, "android.accessibilityservice.IEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IEventListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/accessibilityservice/IEventListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accessibilityservice/IEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    const-string v3, "android.accessibilityservice.IEventListener"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "android.accessibilityservice.IEventListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "android.accessibilityservice.IEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 55
    .local v0, _arg0:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/IEventListener$Stub;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    move v1, v2

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :sswitch_2
    const-string v1, "android.accessibilityservice.IEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 68
    .local v0, _arg0:Landroid/view/accessibility/AccessibilityEvent;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/IEventListener$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    move v1, v2

    .line 69
    goto :goto_0

    .line 66
    .end local v0           #_arg0:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_1

    .line 73
    .end local v0           #_arg0:Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_3
    const-string v1, "android.accessibilityservice.IEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/accessibilityservice/IEventListener$Stub;->onInterrupt()V

    move v1, v2

    .line 75
    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
