.class Landroid/service/urlrenderer/UrlRenderer$InternalCallback;
.super Landroid/service/urlrenderer/IUrlRendererCallback$Stub;
.source "UrlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/urlrenderer/UrlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/urlrenderer/UrlRenderer$Callback;


# direct methods
.method constructor <init>(Landroid/service/urlrenderer/UrlRenderer$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/service/urlrenderer/IUrlRendererCallback$Stub;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/service/urlrenderer/UrlRenderer$InternalCallback;->mCallback:Landroid/service/urlrenderer/UrlRenderer$Callback;

    .line 64
    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "url"
    .parameter "result"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/service/urlrenderer/UrlRenderer$InternalCallback;->mCallback:Landroid/service/urlrenderer/UrlRenderer$Callback;

    invoke-interface {v0, p1, p2}, Landroid/service/urlrenderer/UrlRenderer$Callback;->complete(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 68
    return-void
.end method
