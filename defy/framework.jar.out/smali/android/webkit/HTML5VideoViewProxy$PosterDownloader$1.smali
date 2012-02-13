.class Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->endData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;->this$0:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;->this$0:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    #getter for: Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;
    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->access$600(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Landroid/net/http/RequestHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;->this$0:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    #getter for: Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mRequestHandle:Landroid/net/http/RequestHandle;
    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->access$600(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Landroid/net/http/RequestHandle;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;->this$0:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    #getter for: Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->access$700(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader$1;->this$0:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    #getter for: Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->mStatusCode:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->access$800(Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z

    :cond_0
    return-void
.end method
