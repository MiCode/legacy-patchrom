.class final Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4320
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/Camera;Lcom/motorola/CameraF/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4320
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;-><init>(Lcom/motorola/CameraF/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 4323
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "PanoramaShutterCallback::OnShutter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    iget-boolean v0, v0, Lcom/motorola/CameraF/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 4328
    .end local p0
    :goto_0
    return-void

    .line 4326
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1700(Lcom/motorola/CameraF/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4327
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$PanoramaShutterCallback;->this$0:Lcom/motorola/CameraF/Camera;

    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
