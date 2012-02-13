.class Lcom/motorola/CameraF/View/ScenesScroll$1;
.super Landroid/os/Handler;
.source "ScenesScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/View/ScenesScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/View/ScenesScroll;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/View/ScenesScroll;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/motorola/CameraF/View/ScenesScroll$1;->this$0:Lcom/motorola/CameraF/View/ScenesScroll;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 65
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoScenesScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll$1;->this$0:Lcom/motorola/CameraF/View/ScenesScroll;

    iget-object v1, p0, Lcom/motorola/CameraF/View/ScenesScroll$1;->this$0:Lcom/motorola/CameraF/View/ScenesScroll;

    #getter for: Lcom/motorola/CameraF/View/ScenesScroll;->mCurrentpos:I
    invoke-static {v1}, Lcom/motorola/CameraF/View/ScenesScroll;->access$000(Lcom/motorola/CameraF/View/ScenesScroll;)I

    move-result v1

    iget-object v2, p0, Lcom/motorola/CameraF/View/ScenesScroll$1;->this$0:Lcom/motorola/CameraF/View/ScenesScroll;

    #getter for: Lcom/motorola/CameraF/View/ScenesScroll;->mInScenesMode:Z
    invoke-static {v2}, Lcom/motorola/CameraF/View/ScenesScroll;->access$100(Lcom/motorola/CameraF/View/ScenesScroll;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/CameraF/View/ScenesScroll;->setSelectedItem(IZ)V

    .line 69
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isInScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setInScroll(Z)V

    .line 74
    :cond_1
    return-void
.end method
