.class public abstract Landroid/service/urlrenderer/IUrlRendererCallback$Stub;
.super Landroid/os/Binder;
.source "IUrlRendererCallback.java"

# interfaces
.implements Landroid/service/urlrenderer/IUrlRendererCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/urlrenderer/IUrlRendererCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/urlrenderer/IUrlRendererCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.urlrenderer.IUrlRendererCallback"

.field static final TRANSACTION_complete:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.service.urlrenderer.IUrlRendererCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/urlrenderer/IUrlRendererCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/urlrenderer/IUrlRendererCallback;
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
    const-string v1, "android.service.urlrenderer.IUrlRendererCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/urlrenderer/IUrlRendererCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/service/urlrenderer/IUrlRendererCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/urlrenderer/IUrlRendererCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/urlrenderer/IUrlRendererCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v4, "android.service.urlrenderer.IUrlRendererCallback"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "android.service.urlrenderer.IUrlRendererCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "android.service.urlrenderer.IUrlRendererCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 60
    .local v1, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/service/urlrenderer/IUrlRendererCallback$Stub;->complete(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move v2, v3

    .line 61
    goto :goto_0

    .line 58
    .end local v1           #_arg1:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
