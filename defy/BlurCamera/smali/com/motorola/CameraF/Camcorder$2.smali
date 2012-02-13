.class Lcom/motorola/CameraF/Camcorder$2;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, "MotoCamcorder"

    .line 1187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, action:Ljava/lang/String;
    const-string v2, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive a broadcast with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camcorder;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1196
    const-string v2, "MotoCamcorder"

    const-string v2, "onReceive - Scanner finished running, load thumbnail"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #calls: Lcom/motorola/CameraF/Camcorder;->interruptThumbnailThread()V
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$4100(Lcom/motorola/CameraF/Camcorder;)V

    .line 1198
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    new-instance v3, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    iget-object v4, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v7}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/CameraF/Camcorder;Landroid/graphics/Bitmap;Z)V

    #setter for: Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;
    invoke-static {v2, v3}, Lcom/motorola/CameraF/Camcorder;->access$4202(Lcom/motorola/CameraF/Camcorder;Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;)Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    .line 1199
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->updateThumbnailThread:Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$4200(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 1202
    :cond_2
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1205
    :cond_3
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #setter for: Lcom/motorola/CameraF/Camcorder;->mShowToast:Z
    invoke-static {v2, v6}, Lcom/motorola/CameraF/Camcorder;->access$3302(Lcom/motorola/CameraF/Camcorder;Z)Z

    .line 1208
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1210
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$1200(Lcom/motorola/CameraF/Camcorder;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1211
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #calls: Lcom/motorola/CameraF/Camcorder;->stopVideoRecording()V
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$4300(Lcom/motorola/CameraF/Camcorder;)V

    .line 1212
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #setter for: Lcom/motorola/CameraF/Camcorder;->mStatus:I
    invoke-static {v2, v7}, Lcom/motorola/CameraF/Camcorder;->access$1202(Lcom/motorola/CameraF/Camcorder;I)I

    .line 1213
    sput-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->mUrgentExit:Z

    .line 1214
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/CameraF/Camcorder;->finish()V

    goto :goto_0

    .line 1216
    :cond_4
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->calcVideoTimeRemaining(Landroid/os/Handler;)V

    .line 1217
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #calls: Lcom/motorola/CameraF/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$500(Lcom/motorola/CameraF/Camcorder;)V

    goto :goto_0

    .line 1219
    :cond_5
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1223
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #setter for: Lcom/motorola/CameraF/Camcorder;->mShowToast:Z
    invoke-static {v2, v6}, Lcom/motorola/CameraF/Camcorder;->access$3302(Lcom/motorola/CameraF/Camcorder;Z)Z

    .line 1224
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentVideoResDimensions()Ljava/lang/String;

    move-result-object v1

    .line 1225
    .local v1, currentVidRes:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->calcVideoTimeRemaining(Landroid/os/Handler;)V

    .line 1226
    iget-object v2, p0, Lcom/motorola/CameraF/Camcorder$2;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x34

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
