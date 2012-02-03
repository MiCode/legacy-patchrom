.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_getAccessibilityServiceList:I = 0x3

.field static final TRANSACTION_interrupt:I = 0x4

.field static final TRANSACTION_sendAccessibilityEvent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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
    const/4 v4, 0x1

    const-string v5, "android.view.accessibility.IAccessibilityManager"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 48
    :sswitch_0
    const-string v3, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v3, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 56
    .local v0, _arg0:Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 58
    goto :goto_0

    .line 62
    .end local v0           #_arg0:Landroid/view/accessibility/IAccessibilityManagerClient;
    :sswitch_2
    const-string v3, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    sget-object v3, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 70
    .local v0, _arg0:Landroid/view/accessibility/AccessibilityEvent;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 71
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v1, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 73
    goto :goto_0

    .line 68
    .end local v0           #_arg0:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #_result:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_1

    .line 72
    .restart local v1       #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 77
    .end local v0           #_arg0:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #_result:Z
    :sswitch_3
    const-string v3, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v3, v4

    .line 81
    goto :goto_0

    .line 85
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    :sswitch_4
    const-string v3, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 88
    goto :goto_0

    .line 44
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
