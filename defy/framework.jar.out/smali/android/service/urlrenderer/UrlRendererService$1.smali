.class Landroid/service/urlrenderer/UrlRendererService$1;
.super Landroid/service/urlrenderer/IUrlRendererService$Stub;
.source "UrlRendererService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/urlrenderer/UrlRendererService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/urlrenderer/UrlRendererService;


# direct methods
.method constructor <init>(Landroid/service/urlrenderer/UrlRendererService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/service/urlrenderer/UrlRendererService$1;->this$0:Landroid/service/urlrenderer/UrlRendererService;

    invoke-direct {p0}, Landroid/service/urlrenderer/IUrlRendererService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Ljava/util/List;IILandroid/service/urlrenderer/IUrlRendererCallback;)V
    .locals 2
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "cb"
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

    .prologue
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/service/urlrenderer/UrlRendererService$1;->this$0:Landroid/service/urlrenderer/UrlRendererService;

    new-instance v1, Landroid/service/urlrenderer/UrlRendererService$InternalCallback;

    invoke-direct {v1, p4}, Landroid/service/urlrenderer/UrlRendererService$InternalCallback;-><init>(Landroid/service/urlrenderer/IUrlRendererCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/service/urlrenderer/UrlRendererService;->processRequest(Ljava/util/List;IILandroid/service/urlrenderer/UrlRenderer$Callback;)V

    return-void
.end method
