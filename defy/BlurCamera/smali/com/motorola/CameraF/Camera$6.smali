.class Lcom/motorola/CameraF/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera;->onClick(Landroid/view/View;)V
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
    .line 5717
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    const-string v6, "MotoCamera"

    .line 5720
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    if-eqz v2, :cond_0

    .line 5721
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camera$ImageCapture;->cancelSave()V

    .line 5722
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v2, v2, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v1

    .line 5723
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 5725
    :try_start_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$7000(Lcom/motorola/CameraF/Camera;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5731
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$7300(Lcom/motorola/CameraF/Camera;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5732
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 5733
    const-string v2, "MotoCamera"

    const-string v2, "Camera:onClick:postpicturepanel invisible"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    :cond_1
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->interruptThumbnailThread()V
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$9100(Lcom/motorola/CameraF/Camera;)V

    .line 5737
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    new-instance v3, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    iget-object v4, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {v3, v4, v5}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camera;[B)V

    #setter for: Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camera;->access$9202(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    .line 5738
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->updateThumbnailThread:Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$9200(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camera$UpdateThumbnailRunnable;->start()V

    .line 5740
    iget-object v2, p0, Lcom/motorola/CameraF/Camera$6;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5741
    return-void

    .line 5726
    .restart local v1       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 5727
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MotoCamera"

    const-string v2, "Camera:onClick: file delete failed"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
