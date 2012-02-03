.class public interface abstract Lcom/android/internal/app/IMediaContainerService;
.super Ljava/lang/Object;
.source "IMediaContainerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IMediaContainerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkFreeStorage(ZLandroid/net/Uri;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract copyResource(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMinimalPackageInfo(Landroid/net/Uri;I)Landroid/content/pm/PackageInfoLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
