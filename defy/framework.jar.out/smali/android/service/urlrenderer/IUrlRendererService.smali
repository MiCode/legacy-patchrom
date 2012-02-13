.class public interface abstract Landroid/service/urlrenderer/IUrlRendererService;
.super Ljava/lang/Object;
.source "IUrlRendererService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/urlrenderer/IUrlRendererService$Stub;
    }
.end annotation


# virtual methods
.method public abstract render(Ljava/util/List;IILandroid/service/urlrenderer/IUrlRendererCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/service/urlrenderer/IUrlRendererCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
