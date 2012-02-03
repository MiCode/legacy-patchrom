.class Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->registerScanSuspendCommandReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V
    .locals 0
    .parameter

    .prologue
    .line 7241
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 7243
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7244
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    const/4 v1, 0x1

    #setter for: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mMediaScanning:Z
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2702(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;Z)Z

    .line 7245
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #calls: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->suspend()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2400(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    .line 7246
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaScanner started!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7254
    :cond_0
    :goto_0
    return-void

    .line 7247
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7248
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mMediaScanning:Z
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2702(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;Z)Z

    .line 7249
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #getter for: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mApplicationSuspendThumbWorker:Z
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2300(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7250
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$2;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #calls: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->resume()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2800(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    .line 7252
    :cond_2
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaScanner stopped!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
