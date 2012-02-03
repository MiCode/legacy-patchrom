.class public final Landroid/service/urlrenderer/UrlRenderer;
.super Ljava/lang/Object;
.source "UrlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/urlrenderer/UrlRenderer$InternalCallback;,
        Landroid/service/urlrenderer/UrlRenderer$Callback;
    }
.end annotation


# instance fields
.field private mService:Landroid/service/urlrenderer/IUrlRendererService;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/service/urlrenderer/IUrlRendererService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/urlrenderer/IUrlRendererService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/urlrenderer/UrlRenderer;->mService:Landroid/service/urlrenderer/IUrlRendererService;

    .line 58
    return-void
.end method


# virtual methods
.method public render(Ljava/util/List;IILandroid/service/urlrenderer/UrlRenderer$Callback;)V
    .locals 2
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/service/urlrenderer/UrlRenderer$Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/service/urlrenderer/UrlRenderer;->mService:Landroid/service/urlrenderer/IUrlRendererService;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/service/urlrenderer/UrlRenderer;->mService:Landroid/service/urlrenderer/IUrlRendererService;

    new-instance v1, Landroid/service/urlrenderer/UrlRenderer$InternalCallback;

    invoke-direct {v1, p4}, Landroid/service/urlrenderer/UrlRenderer$InternalCallback;-><init>(Landroid/service/urlrenderer/UrlRenderer$Callback;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/service/urlrenderer/IUrlRendererService;->render(Ljava/util/List;IILandroid/service/urlrenderer/IUrlRendererCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method
