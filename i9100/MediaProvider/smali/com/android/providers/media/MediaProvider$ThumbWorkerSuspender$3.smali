.class Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$3;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;
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
    .line 7258
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$3;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7260
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$3;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mApplicationSuspendThumbWorker:Z
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2302(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;Z)Z

    .line 7261
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$3;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #calls: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->stopThumbWorkerSuspendTimer()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2600(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    .line 7263
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$3;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #getter for: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mMediaScanning:Z
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2700(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7264
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$3;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #calls: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->resume()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2800(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    .line 7266
    :cond_0
    return-void
.end method
