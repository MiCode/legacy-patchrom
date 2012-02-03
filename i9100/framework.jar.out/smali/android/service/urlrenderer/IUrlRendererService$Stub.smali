.class public abstract Landroid/service/urlrenderer/IUrlRendererService$Stub;
.super Landroid/os/Binder;
.source "IUrlRendererService.java"

# interfaces
.implements Landroid/service/urlrenderer/IUrlRendererService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/urlrenderer/IUrlRendererService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/urlrenderer/IUrlRendererService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.urlrenderer.IUrlRendererService"

.field static final TRANSACTION_render:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.service.urlrenderer.IUrlRendererService"

    invoke-virtual {p0, p0, v0}, Landroid/service/urlrenderer/IUrlRendererService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/urlrenderer/IUrlRendererService;
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
    const-string v1, "android.service.urlrenderer.IUrlRendererService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/urlrenderer/IUrlRendererService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/service/urlrenderer/IUrlRendererService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/urlrenderer/IUrlRendererService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/urlrenderer/IUrlRendererService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v6, "android.service.urlrenderer.IUrlRendererService"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v4, "android.service.urlrenderer.IUrlRendererService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "android.service.urlrenderer.IUrlRendererService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/urlrenderer/IUrlRendererCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/urlrenderer/IUrlRendererCallback;

    move-result-object v3

    .line 59
    .local v3, _arg3:Landroid/service/urlrenderer/IUrlRendererCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/service/urlrenderer/IUrlRendererService$Stub;->render(Ljava/util/List;IILandroid/service/urlrenderer/IUrlRendererCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 61
    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
