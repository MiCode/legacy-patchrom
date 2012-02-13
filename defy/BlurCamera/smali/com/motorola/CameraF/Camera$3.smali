.class Lcom/motorola/CameraF/Camera$3;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera;->initializeSecondTime()V
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
    .line 1302
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$3;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$3;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mLocUtil:Lcom/motorola/CameraF/LocUtility;
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1100(Lcom/motorola/CameraF/Camera;)Lcom/motorola/CameraF/LocUtility;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$3;->this$0:Lcom/motorola/CameraF/Camera;

    #getter for: Lcom/motorola/CameraF/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camera;->access$1000(Lcom/motorola/CameraF/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 1305
    return-void
.end method
