.class final Lcom/motorola/CameraF/Camera$storageRunnable;
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
    name = "storageRunnable"
.end annotation


# instance fields
.field copy:[B

.field mFileName:Ljava/lang/String;

.field final mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/Camera;[BLandroid/hardware/Camera;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "data"
    .parameter "camera"
    .parameter "loc"
    .parameter "FileName"

    .prologue
    .line 4172
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$storageRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4173
    iput-object p5, p0, Lcom/motorola/CameraF/Camera$storageRunnable;->mFileName:Ljava/lang/String;

    .line 4174
    iput-object p4, p0, Lcom/motorola/CameraF/Camera$storageRunnable;->mLocation:Landroid/location/Location;

    .line 4175
    iput-object p2, p0, Lcom/motorola/CameraF/Camera$storageRunnable;->copy:[B

    .line 4176
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$storageRunnable;->this$0:Lcom/motorola/CameraF/Camera;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera;->mImageCapture:Lcom/motorola/CameraF/Camera$ImageCapture;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$storageRunnable;->copy:[B

    iget-object v2, p0, Lcom/motorola/CameraF/Camera$storageRunnable;->mLocation:Landroid/location/Location;

    #calls: Lcom/motorola/CameraF/Camera$ImageCapture;->storeImage([BLandroid/location/Location;)Ljava/lang/Integer;
    invoke-static {v0, v1, v2}, Lcom/motorola/CameraF/Camera$ImageCapture;->access$8500(Lcom/motorola/CameraF/Camera$ImageCapture;[BLandroid/location/Location;)Ljava/lang/Integer;

    .line 4181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/Camera$storageRunnable;->copy:[B

    .line 4182
    return-void
.end method
