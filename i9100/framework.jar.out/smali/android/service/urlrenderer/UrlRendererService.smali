.class public abstract Landroid/service/urlrenderer/UrlRendererService;
.super Landroid/app/Service;
.source "UrlRendererService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/urlrenderer/UrlRendererService$InternalCallback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.urlrenderer.UrlRendererService"

.field static final TAG:Ljava/lang/String; = "UrlRendererService"


# instance fields
.field private final mBinderInterface:Landroid/service/urlrenderer/IUrlRendererService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Landroid/service/urlrenderer/UrlRendererService$1;

    invoke-direct {v0, p0}, Landroid/service/urlrenderer/UrlRendererService$1;-><init>(Landroid/service/urlrenderer/UrlRendererService;)V

    iput-object v0, p0, Landroid/service/urlrenderer/UrlRendererService;->mBinderInterface:Landroid/service/urlrenderer/IUrlRendererService$Stub;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/service/urlrenderer/UrlRendererService;->mBinderInterface:Landroid/service/urlrenderer/IUrlRendererService$Stub;

    return-object v0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/service/urlrenderer/UrlRendererService;->stopSelf()V

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public abstract processRequest(Ljava/util/List;IILandroid/service/urlrenderer/UrlRenderer$Callback;)V
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
.end method
