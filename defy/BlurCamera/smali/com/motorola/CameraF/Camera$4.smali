.class Lcom/motorola/CameraF/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera;->enablePanorama(Z)V
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
    .line 2176
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$4;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$4;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$4;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 2179
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$4;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1300(Lcom/motorola/CameraF/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$4;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mIsSpeakerOn:Z
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1400(Lcom/motorola/CameraF/Camera;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2184
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$4;->this$0:Lcom/motorola/CameraF/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/CameraF/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0, v1}, Lcom/motorola/CameraF/Camera;->access$1302(Lcom/motorola/CameraF/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 2186
    :cond_0
    return-void
.end method
