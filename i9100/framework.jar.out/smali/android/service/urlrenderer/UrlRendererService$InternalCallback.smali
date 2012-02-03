.class Landroid/service/urlrenderer/UrlRendererService$InternalCallback;
.super Ljava/lang/Object;
.source "UrlRendererService.java"

# interfaces
.implements Landroid/service/urlrenderer/UrlRenderer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/urlrenderer/UrlRendererService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/urlrenderer/IUrlRendererCallback;


# direct methods
.method constructor <init>(Landroid/service/urlrenderer/IUrlRendererCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/service/urlrenderer/UrlRendererService$InternalCallback;->mCallback:Landroid/service/urlrenderer/IUrlRendererCallback;

    .line 45
    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "url"
    .parameter "result"

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Landroid/service/urlrenderer/UrlRendererService$InternalCallback;->mCallback:Landroid/service/urlrenderer/IUrlRendererCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/urlrenderer/IUrlRendererCallback;->complete(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method
