.class Lcom/motorola/CameraF/Camera$5;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4906
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x2

    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 4908
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4912
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4914
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 4915
    const-string v1, "MotoCamera"

    const-string v2, "onReceive - Scanner finished running, load thumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4917
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->interruptThumbnailThread()V
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9100(Lcom/motorola/CameraF/Camera;)V

    .line 4918
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    new-instance v2, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camera;[B)V

    #setter for: Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    invoke-static {v1, v2}, Lcom/motorola/CameraF/Camera;->access$9202(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    .line 4919
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9200(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->start()V

    .line 4922
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4931
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$7300(Lcom/motorola/CameraF/Camera;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$7300(Lcom/motorola/CameraF/Camera;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 4933
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$7300(Lcom/motorola/CameraF/Camera;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4934
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4937
    :cond_3
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->checkStorage()V
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$9900(Lcom/motorola/CameraF/Camera;)V

    .line 4939
    :cond_4
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$2400(Lcom/motorola/CameraF/Camera;)I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 4943
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->showStorageToast()V
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$8200(Lcom/motorola/CameraF/Camera;)V

    .line 4944
    iget-object v1, p0, Lcom/motorola/CameraF/Camera$5;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v1}, Lcom/motorola/CameraF/Camera;->finish()V

    .line 4946
    :cond_6
    return-void
.end method
