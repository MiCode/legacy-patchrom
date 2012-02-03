.class Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;
.super Ljava/lang/Object;
.source "MediaScannerEngine.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 6

    .prologue
    const-string v5, "MediaScannerEngine"

    .line 43
    const-string v3, "MediaScannerEngine"

    const-string v3, "Connected to media scanner"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mFilesToScan:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, fileName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mScannerConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$100(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/media/MediaScannerConnection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 48
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "MediaScannerEngine"

    const-string v3, "Unable to scan file "

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    .end local v0           #fileName:Ljava/lang/String;
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v4, "MediaScannerEngine"

    .line 55
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mNewuris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mFilesToScan:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mFilesToScan:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mNewuris:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 58
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;
    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$300(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mCallback:Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;
    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$300(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mFilesToScan:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mNewuris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;->onResultsAvailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 62
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    #getter for: Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->mScannerConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$100(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 63
    const-string v1, "MediaScannerEngine"

    const-string v2, "Disconnected from media scanner"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MediaScannerEngine"

    const-string v1, "Unable to disconnect media scanner"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
