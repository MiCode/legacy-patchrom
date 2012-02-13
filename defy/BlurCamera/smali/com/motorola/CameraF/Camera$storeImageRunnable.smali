.class final Lcom/motorola/CameraF/Camera$storeImageRunnable;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "storeImageRunnable"
.end annotation


# instance fields
.field b:[B

.field final cam:Landroid/hardware/Camera;

.field final mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/Camera;[BLandroid/hardware/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "data"
    .parameter "cam"
    .parameter "loc"

    .prologue
    .line 3827
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$storeImageRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3828
    iput-object p2, p0, Lcom/motorola/CameraF/Camera$storeImageRunnable;->b:[B

    .line 3829
    iput-object p3, p0, Lcom/motorola/CameraF/Camera$storeImageRunnable;->cam:Landroid/hardware/Camera;

    .line 3830
    iput-object p4, p0, Lcom/motorola/CameraF/Camera$storeImageRunnable;->mLocation:Landroid/location/Location;

    .line 3831
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3835
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "storeImageRunnable() - storing image on thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$storeImageRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$storeImageRunnable;->b:[B

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$storeImageRunnable;->cam:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/CameraF/Camera$storeImageRunnable;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/CameraF/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 3837
    return-void
.end method
